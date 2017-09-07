
# input_json: { 'input_size_in_MB': {'input_arg_name1': input_arg_name1_size, 'input_arg_name2': input_arg_name2_size, ...}, 'input_param_name1': input_param_value1, 'input_param_name2': input_param_value2, ... }
# input_size_in_MB is the input file size in MB.
# return values: total_size(MB), total_mem(MB), number_of_CPUs_required


class BenchmarkResult(object):

    def __init__(self, size, mem, cpu):
        self.total_size_in_MB = size
        self.total_mem_in_MB = mem
        self.min_CPU = cpu

    def as_dict(self):
        return self.__dict__


def md5(input_json):

    assert 'input_size_in_MB' in input_json
    assert 'input_file' in input_json.get('input_size_in_MB')

    r = BenchmarkResult(size=input_json.get('input_size_in_MB').get('input_file') + 3000,
                        mem=4,
                        cpu=1)

    return(r.as_dict())


