
# input_json: { 'input_size_in_bytes': {'input_arg_name1': input_arg_name1_size, 'input_arg_name2': input_arg_name2_size, ...}, 'input_param_name1': input_param_value1, 'input_param_name2': input_param_value2, ... }
# input_size_in_bytes is the input file size in bytes.
# return values: total_size(GB), total_mem(MB), number_of_CPUs_required


class BenchmarkResult(object):

    def __init__(self, size, mem, cpu):
        self.total_size_in_GB = size
        self.total_mem_in_MB = mem
        self.min_CPU = cpu

    def as_dict(self):
        return self.__dict__


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
    assert 'threads' in input_json

    nthreads = input_json.get('threads')
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
    assert 'nThreads' in input_json

    nthreads = input_json.get('nThreads')


