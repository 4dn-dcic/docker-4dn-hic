import os
import csv
import re

# input_json is a dictionary with two keys: 'input_size_in_bytes' and 'parameters'
# The value of 'input_size_in_bytes' is a dictionary with input_argument_name as key and file size in bytes as value
# The value of 'parameters' is also a dictionary with input_argument_name as key and parameter value as value.
# return values:
#     total_size(GB), total_mem(MB), number_of_CPUs_required
#     AWS-related information including recommended_instance_type, ebs_size, EBS_optimized, etc.


class BenchmarkResult(object):

    def __init__(self, size, mem, cpu):
        self.total_size_in_GB = size
        self.total_mem_in_MB = mem
        self.min_CPU = cpu
        self.aws = get_optimal_instance_type(cpu=cpu, mem_in_gb=mem / 1024)

    def as_dict(self):
        return self.__dict__


def benchmark(app_name, input_json):
    if app_name == 'md5':
        return(md5(input_json))
    elif app_name == 'fastqc-0-11-4-1':
        return(fastqc_0_11_4_1(input_json))
    elif app_name == 'bwa-mem':
        return(bwa_mem(input_json))
    else:
        raise Exception("Benchmark is unavailable for the corresponding app_name")
        return(None)


def md5(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'input_file' in input_json.get('input_size_in_bytes')

    r = BenchmarkResult(size=input_json.get('input_size_in_bytes').get('input_file') / 1048576 + 3,
                        mem=4,
                        cpu=1)

    return(r.as_dict())


def fastqc_0_11_4_1(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'input_fastq' in input_json.get('input_size_in_bytes')

    nthreads = 1  # default value according to the cwl
    if 'parameters' in input_json:
        if 'threads' in input_json.get('parameters'):
            nthreads = input_json.get('parameters').get('threads')

    r = BenchmarkResult(size=input_json.get('input_size_in_bytes').get('input_fastq') / 1048576 * 2 + 3,
                        mem=300 * nthreads,
                        cpu=nthreads)

    return(r.as_dict())


# bwa_mem is still a draft
def bwa_mem(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'fastq1' in input_json.get('input_size_in_bytes')
    assert 'fastq2' in input_json.get('input_size_in_bytes')
    assert 'bwa_index' in input_json.get('input_size_in_bytes')

    # cpu
    nthreads = 4  # default from cwl
    if 'parameters' in input_json:
        if 'nThreads' in input_json.get('parameters'):
            nthreads = input_json.get('parameters').get('nThreads')

    # space
    input_sizes = input_json.get('input_size_in_bytes')
    total_input_size = input_sizes.get('fastq1') + input_sizes.get('fastq2') + input_sizes.get('bwa_index')
    output_bam_size = (input_sizes.get('fastq1') + input_sizes.get('fastq2')) * 1.5
    intermediate_uncompressed_index_size = input_sizes.get('bwa_index') * 2
    total_intermediate_size = intermediate_uncompressed_index_size + output_bam_size
    total_output_size = output_bam_size
    additional_size_in_gb = 4.5

    total_size = (total_input_size + total_intermediate_size + total_output_size) / 1048576 + additional_size_in_gb

    # mem
    mem = input_sizes.get('bwa_index') * 4 / 1024

    r = BenchmarkResult(size=total_size, mem=mem, cpu=nthreads)

    return(r.as_dict())


def get_aws_ec2_info_file():
    this_dir, _ = os.path.split(__file__)
    return(os.path.join(this_dir, "aws", "Amazon EC2 Instance Comparison.csv"))
    # return(resource_filename(__name__, 'aws/Amazon EC2 Instance Comparison.csv'))


def get_optimal_instance_type(cpu=1, mem_in_gb=0.5,
                              instance_info_file=get_aws_ec2_info_file()):
    res = dict()
    res['cost_in_usd'] = 100000
    with open(instance_info_file, "r") as csvfile:
        spamreader = csv.DictReader(csvfile, delimiter=',', quotechar='"')
        for row in spamreader:
            row_cpu = int(re.sub(" vCPUs.*", '', row['vCPUs']))
            row_instance_type = row['API Name']
            row_mem = float(row['Memory'].replace(' GiB', ''))
            row_cost = float(row['Linux On Demand cost'].replace(' hourly', '').replace('$', ''))
            row_ebs_opt_surcharge = row['EBS Optimized surcharge']
            if row_ebs_opt_surcharge == 'unavailable':
                row_ebs_opt = False
                row_ebs_opt_surcharge = None
            else:
                row_ebs_opt = True
                row_ebs_opt_surcharge = float(row_ebs_opt_surcharge.replace(' hourly', '').replace('$', ''))
            if row_cpu >= cpu and row_mem >= mem_in_gb and row_cost < res['cost_in_usd']:
                res['cost_in_usd'] = row_cost
                res['mem_in_gb'] = row_mem
                res['cpu'] = row_cpu
                res['recommended_instance_type'] = row_instance_type
                res['EBS_optimized'] = row_ebs_opt
                res['EBS_optimization_surcharge'] = row_ebs_opt_surcharge
    if res['cost_in_usd'] == 100000:
        raise Exception("No EC2 instance can match the requirement.")

    return(res)
