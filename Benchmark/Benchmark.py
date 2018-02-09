import os
import csv
import re

# input_json is a dictionary with two keys:
#   'input_size_in_bytes' and 'parameters'
# The value of 'input_size_in_bytes' is a dictionary,
# with input_argument_name as key and file size in bytes as value
# The value of 'parameters' is also a dictionary
# with input_argument_name as key and parameter value as value.
# return values:
#     total_size(GB), total_mem(MB), number_of_CPUs_required
#     AWS-related information including :
#         recommended_instance_type, ebs_size, EBS_optimized.


GB_IN_BYTES = 1073741824
MB_IN_BYTES = 1048576
GB_IN_MB = 1024


class BenchmarkResult(object):

    def __init__(self, size, mem, cpu):
        self.total_size_in_GB = size
        self.total_mem_in_MB = mem
        self.min_CPU = cpu
        self.aws = get_optimal_instance_type(cpu=cpu, mem_in_gb=mem / GB_IN_MB)

    def as_dict(self):
        return self.__dict__


def benchmark(app_name, input_json, raise_error=False):
    if app_name == 'md5':
        return(md5(input_json))
    elif app_name == 'fastqc-0-11-4-1':
        return(fastqc_0_11_4_1(input_json))
    elif app_name == 'bwa-mem':
        return(bwa_mem(input_json))
    elif app_name == 'pairsam-parse-sort':
        return(pairsam_parse_sort(input_json))
    elif app_name == 'pairsam-merge':
        return(pairsam_merge(input_json))
    elif app_name == 'pairsam-markasdup':
        return(pairsam_markasdup(input_json))
    elif app_name == 'pairsam-filter':
        return(pairsam_filter(input_json))
    elif app_name == 'addfragtopairs':
        return(addfragtopairs(input_json))
    elif app_name == 'hi-c-processing-partb':
        return(hi_c_processing_partb(input_json))
    elif app_name == 'hi-c-processing-partc':
        return(hi_c_processing_partc(input_json))
    elif app_name == 'hi-c-processing-bam':
        return(hi_c_processing_bam(input_json))
    elif app_name == 'hi-c-processing-pairs':
        return(hi_c_processing_pairs(input_json))
    elif app_name == 'pairs-patch':
        return(pairs_patch(input_json))
    elif app_name == 'repliseq-parta':
        return(repliseq_parta(input_json))
    elif app_name == 'pairsqc-single':
        return(pairsqc_single(input_json))
    else:
        if raise_error:
            raise AppNameUnavailableException
        else:
            return(None)


def md5(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'input_file' in input_json.get('input_size_in_bytes')
    input_in_bytes = input_json.get('input_size_in_bytes').get('input_file')
    input_size = input_in_bytes / GB_IN_BYTES + 3
    r = BenchmarkResult(size=input_size,
                        mem=1024,
                        cpu=1)

    return(r.as_dict())


def fastqc_0_11_4_1(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'input_fastq' in input_json.get('input_size_in_bytes')

    nthreads = 1  # default value according to the cwl
    if 'parameters' in input_json:
        if 'threads' in input_json.get('parameters'):
            nthreads = input_json.get('parameters').get('threads')

    input_in_bytes = input_json.get('input_size_in_bytes').get('input_fastq')
    input_size = input_in_bytes / GB_IN_BYTES * 2 + 3
    mem = 300 * nthreads
    if mem < 1024:
        mem = 1024
    r = BenchmarkResult(size=input_size,
                        mem=mem,
                        cpu=nthreads)

    return(r.as_dict())


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
    data_input_size = input_sizes.get('fastq1') + input_sizes.get('fastq2')
    total_input_size = data_input_size + input_sizes.get('bwa_index')
    output_bam_size = data_input_size * 2
    intermediate_index_size = input_sizes.get('bwa_index') * 2
    copied_input_size = data_input_size * 7  # copied and unzipped
    total_intermediate_size \
        = intermediate_index_size + output_bam_size + copied_input_size
    total_output_size = output_bam_size
    additional_size_in_gb = 10

    total_file_size_in_bp \
        = total_input_size + total_intermediate_size + total_output_size
    total_size = total_file_size_in_bp / GB_IN_BYTES + additional_size_in_gb

    # mem
    mem = input_sizes.get('bwa_index') * 4 / MB_IN_BYTES + (nthreads * 500)

    r = BenchmarkResult(size=total_size, mem=mem, cpu=nthreads)

    return(r.as_dict())


def pairsam_parse_sort(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'bam' in input_json.get('input_size_in_bytes')

    # cpu
    nthreads = 8  # default from cwl
    if 'parameters' in input_json:
        if 'nThreads' in input_json.get('parameters'):
            nthreads = input_json.get('parameters').get('nThreads')

    in_size = input_json.get('input_size_in_bytes')
    bamsize = in_size.get('bam') / GB_IN_BYTES
    pairsamsize = bamsize * 10  # very rough number
    tmp_pairsamsize = pairsamsize
    total_size = bamsize + pairsamsize + tmp_pairsamsize
    mem = 48000  # very rough number

    r = BenchmarkResult(size=total_size, mem=mem, cpu=nthreads * 2)

    return(r.as_dict())


def pairsam_merge(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'input_pairsams' in input_json.get('input_size_in_bytes')
    in_size = input_json['input_size_in_bytes']
    assert isinstance(in_size['input_pairsams'], list)

    # cpu
    nthreads = 8  # default from cwl
    if 'parameters' in input_json:
        if 'nThreads' in input_json.get('parameters'):
            nthreads = input_json.get('parameters').get('nThreads')

    # space
    input_size = sum(in_size['input_pairsams']) / GB_IN_BYTES
    total_size = input_size * 3
    total_safe_size = total_size * 2

    # mem
    mem = 4000

    # 32 cores: 1.8G/min (c4.8xlarge), 8 cores: 0.9G/min (r4.2xlarge)

    r = BenchmarkResult(size=total_safe_size, mem=mem, cpu=nthreads)
    return(r.as_dict())


def pairsam_markasdup(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'input_pairsam' in input_json.get('input_size_in_bytes')

    cpu = 1  # very rough estimate
    mem = 15000  # very rough estimate

    # space
    insize = input_json['input_size_in_bytes']['input_pairsam'] / GB_IN_BYTES
    outsize = insize
    intersize = outsize
    total_size = insize + outsize + intersize
    total_safe_size = total_size * 2

    r = BenchmarkResult(size=total_safe_size, mem=mem, cpu=cpu)
    return(r.as_dict())


def pairsam_filter(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'input_pairsam' in input_json.get('input_size_in_bytes')

    cpu = 4  # very rough estimate
    mem = 16000  # very rough estimate

    # space
    insize = input_json['input_size_in_bytes']['input_pairsam'] / GB_IN_BYTES
    outbamsize = insize
    outpairssize = insize  # to be safe
    outsize = outbamsize + outpairssize
    intersize = outsize
    total_size = insize + outsize + intersize
    total_safe_size = total_size * 2

    r = BenchmarkResult(size=total_safe_size, mem=mem, cpu=cpu)
    return(r.as_dict())


def addfragtopairs(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'input_pairs' in input_json.get('input_size_in_bytes')

    cpu = 1  # very rough estimate
    mem = 1024  # very rough estimate

    # space
    insize = input_json['input_size_in_bytes']['input_pairs'] / GB_IN_BYTES
    outsize = insize * 2
    intersize = outsize
    total_size = insize + outsize + intersize
    total_safe_size = total_size * 2

    r = BenchmarkResult(size=total_safe_size, mem=mem, cpu=cpu)
    return(r.as_dict())


def pairs_patch(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'input_pairs' in input_json.get('input_size_in_bytes')

    cpu = 1  # very rough estimate
    mem = 1024  # very rough estimate

    # space
    insize = input_json['input_size_in_bytes']['input_pairs'] / GB_IN_BYTES
    outsize = insize * 2
    intersize = outsize
    total_size = insize + outsize + intersize
    total_safe_size = total_size * 2

    r = BenchmarkResult(size=total_safe_size, mem=mem, cpu=cpu)
    return(r.as_dict())


def pairsqc_single(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'input_pairs' in input_json.get('input_size_in_bytes')

    cpu = 1  # very rough estimate
    mem = 1024  # very rough estimate

    # space
    insize = input_json['input_size_in_bytes']['input_pairs'] / GB_IN_BYTES
    outsize = 0
    intersize = 0
    total_size = insize + outsize + intersize
    total_safe_size = total_size * 2

    r = BenchmarkResult(size=total_safe_size, mem=mem, cpu=cpu)
    return(r.as_dict())


def hi_c_processing_partb(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'input_pairs' in input_json.get('input_size_in_bytes')
    in_size = input_json['input_size_in_bytes']
    assert isinstance(in_size['input_pairs'], list)

    # cpu
    nthreads = 8  # default from cwl
    if 'parameters' in input_json:
        if 'ncores' in input_json.get('parameters'):
            nthreads = input_json.get('parameters').get('ncores')

    # space
    input_size = sum(in_size['input_pairs']) / GB_IN_BYTES
    out_pairs_size = input_size
    out_cool_size = input_size
    out_hic_size = input_size
    out_size = out_pairs_size + out_cool_size + out_hic_size
    total_size = input_size + out_size
    total_safe_size = total_size * 2

    # mem
    maxmem = 14 * GB_IN_MB  # default from cwl
    if 'parameters' in input_json:
        if 'maxmem' in input_json.get('parameters'):
            maxmem = input_json.get('parameters').get('maxmem')
            if 'g' in maxmem:
                maxmem = int(maxmem.replace('g', '')) * GB_IN_MB
            elif 'm' in maxmem:
                maxmem = int(maxmem.replace('m', ''))
            else:
                raise Exception("proper maxmem string?")

    cooler_mem = nthreads * input_size * GB_IN_MB
    if cooler_mem > maxmem:
        mem = cooler_mem
    else:
        mem = maxmem

    r = BenchmarkResult(size=total_safe_size, mem=mem, cpu=nthreads)
    return(r.as_dict())


def hi_c_processing_partc(input_json):
    assert 'input_size_in_bytes' in input_json
    insize = input_json.get('input_size_in_bytes')
    assert 'input_cool' in insize
    assert 'input_hic' in insize

    nthreads = 1  # default value according to the cwl
    nres = 13  # default value according to the cwl
    if 'parameters' in input_json:
        if 'ncores' in input_json.get('parameters'):
            nthreads = input_json.get('parameters').get('ncores')
        if 'nres' in input_json.get('parameters'):
            nres = input_json.get('parameters').get('nres')

    input_size = insize['input_cool'] + insize['input_hic']
    out_size = input_size * nres
    inter_size = out_size
    total_size = (input_size + out_size + inter_size) / GB_IN_BYTES
    total_safe_size = total_size * 2

    cpu = nthreads
    mem = nthreads * input_size * 5 / MB_IN_BYTES
    if mem < 1024:
        mem = 1024

    r = BenchmarkResult(size=total_safe_size,
                        mem=mem,
                        cpu=cpu)

    return(r.as_dict())


def hi_c_processing_bam(input_json):
    assert 'input_size_in_bytes' in input_json
    in_size = input_json.get('input_size_in_bytes')
    assert 'input_bams' in input_json.get('input_size_in_bytes')
    assert 'chromsize' in input_json.get('input_size_in_bytes')
    assert isinstance(in_size['input_bams'], list)

    # cpu
    nthreads_parse_sort = 8  # default from cwl
    nthreads_merge = 8  # default from cwl
    if 'parameters' in input_json:
        if 'nthreads_parse_sort' in input_json.get('parameters'):
            nthreads_parse_sort = input_json.get('parameters').get('nthreads_parse_sort')
        if 'nthreads_merge' in input_json.get('parameters'):
            nthreads_merge = input_json.get('parameters').get('nthreads_merge')

    # nthreads is the maximum of the two nthread parameters
    nthreads = nthreads_parse_sort if nthreads_parse_sort > nthreads_merge else nthreads_merge

    bamsize = sum(in_size['input_bams']) / GB_IN_BYTES
    other_inputsize = in_size.get('chromsize') / GB_IN_BYTES
    pairsize = bamsize / 2  ## rough number
    outsize = bamsize + pairsize
    tmp_pairsamsize = bamsize * 5
    total_size = (bamsize + other_inputsize + outsize) *2 + tmp_pairsamsize  # input and output are copied once
    safe_total_size = total_size * 1.4
    mem = 2000  # very rough number

    r = BenchmarkResult(size=safe_total_size, mem=mem, cpu=nthreads)

    return(r.as_dict())


def hi_c_processing_pairs(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'input_pairs' in input_json.get('input_size_in_bytes')
    in_size = input_json['input_size_in_bytes']
    assert isinstance(in_size['input_pairs'], list)

    # cpu
    nthreads = 8  # default from cwl
    if 'parameters' in input_json:
        if 'nthreads' in input_json.get('parameters'):
            nthreads = input_json.get('parameters').get('nthreads')

    # space
    input_size = sum(in_size['input_pairs']) / GB_IN_BYTES
    out_size = input_size * 1.5 
    intermediate_size = input_size * 3
    total_size = input_size + out_size + intermediate_size
    total_safe_size = total_size * 1.4

    # mem
    maxmem = 14 * GB_IN_MB  # default from cwl
    if 'parameters' in input_json:
        if 'maxmem' in input_json.get('parameters'):
            maxmem = input_json.get('parameters').get('maxmem')
            if 'g' in maxmem:
                maxmem = int(maxmem.replace('g', '')) * GB_IN_MB
            elif 'm' in maxmem:
                maxmem = int(maxmem.replace('m', ''))
            else:
                raise Exception("proper maxmem string?")

    cooler_mem = nthreads * input_size * GB_IN_MB
    if cooler_mem > maxmem:
        mem = cooler_mem
    else:
        mem = maxmem

    r = BenchmarkResult(size=total_safe_size, mem=mem, cpu=nthreads)
    return(r.as_dict())


def repliseq_parta(input_json):
    assert 'input_size_in_bytes' in input_json
    assert 'fastq' in input_json.get('input_size_in_bytes')
    assert 'bwaIndex' in input_json.get('input_size_in_bytes')

    # cpu
    nthreads = 4  # default from cwl
    if 'parameters' in input_json:
        if 'nthreads' in input_json.get('parameters'):
            nthreads = input_json.get('parameters').get('nthreads')

    # space
    input_sizes = input_json.get('input_size_in_bytes')
    data_input_size = input_sizes.get('fastq')
    total_input_size = data_input_size + input_sizes.get('bwaIndex')
    output_bam_size = data_input_size * 2
    output_clipped_fq_size = data_input_size
    output_size = output_bam_size * 3 + output_clipped_fq_size
    intermediate_index_size = input_sizes.get('bwaIndex') * 2
    copied_input_size = data_input_size * 7  # copied and unzipped
    total_intermediate_size \
        = intermediate_index_size + output_size + copied_input_size
    total_output_size = output_size
    additional_size_in_gb = 10

    total_file_size_in_bp \
        = total_input_size + total_intermediate_size + total_output_size
    total_size = total_file_size_in_bp / GB_IN_BYTES + additional_size_in_gb

    # mem
    mem = input_sizes.get('bwaIndex') * 4 / MB_IN_BYTES + (nthreads * 500)

    r = BenchmarkResult(size=total_size, mem=mem, cpu=nthreads)

    return(r.as_dict())


def get_aws_ec2_info_file():
    this_dir, _ = os.path.split(__file__)
    return(os.path.join(this_dir, "aws", "Amazon EC2 Instance Comparison.csv"))


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
            row_cost_str = row['Linux On Demand cost']
            row_cost = float(row_cost_str.replace(' hourly', '')
                                         .replace('$', ''))
            row_ebs_opt_surcharge = row['EBS Optimized surcharge']
            if row_ebs_opt_surcharge == 'unavailable':
                row_ebs_opt = False
                row_ebs_opt_surcharge = None
            else:
                row_ebs_opt = True
                row_ebs_opt_surcharge \
                    = float(row_ebs_opt_surcharge.replace(' hourly', '')
                                                 .replace('$', ''))
            if row_cpu >= cpu and row_mem >= mem_in_gb:
                if row_cost < res['cost_in_usd']:
                    res['cost_in_usd'] = row_cost
                    res['mem_in_gb'] = row_mem
                    res['cpu'] = row_cpu
                    res['recommended_instance_type'] = row_instance_type
                    res['EBS_optimized'] = row_ebs_opt
                    res['EBS_optimization_surcharge'] = row_ebs_opt_surcharge
    if res['cost_in_usd'] == 100000:
        raise Exception("No EC2 instance can match the requirement.")

    return(res)


# Exceptions
class AppNameUnavailableException(Exception):
    print("Benchmark is unavailable for the corresponding app_name")
