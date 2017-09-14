import unittest
from Benchmark import Benchmark as B


class TestGetOptimalInstanceType(unittest.TestCase):
    def test_get_optimal_instance_type1(self):
        res = B.get_optimal_instance_type()
        assert 'recommended_instance_type' in res
        assert res['recommended_instance_type'] == 't2.nano'
        print(res)

    def test_get_optimal_instance_type2(self):
        res = B.get_optimal_instance_type(cpu=32, mem_in_gb=16)
        assert 'recommended_instance_type' in res
        assert res['recommended_instance_type'] == 'c4.8xlarge'
        print(res)


class TestBenchmark(unittest.TestCase):
    def test_benchmark1(self):
        res = B.benchmark('md5',
                          {'input_size_in_bytes': {'input_file': 200000000}})
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 't2.nano'
        print(res)

    def test_benchmark2(self):
        res = B.benchmark('fastqc-0-11-4-1',
                          {'input_size_in_bytes': {'input_fastq': 20000000000},
                           'parameters': {'threads': 2}})
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 't2.medium'
        print(res)

    def test_benchmark3(self):
        input_json = {'input_size_in_bytes': {'fastq1': 93520000,
                                              'fastq2': 97604000,
                                              'bwa_index': 3364568000},
                      'parameters': {'nThreads': 4}}
        res = B.benchmark('bwa-mem', input_json)
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 't2.xlarge'
        print(res)

    def test_benchmark4(self):
        res = B.benchmark('pairsam-parse-sort',
                          {'input_size_in_bytes': {'bam': 1000000000},
                           'parameters': {'nThreads': 16}})
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 'c4.8xlarge'
        print(res)

    def test_benchmark_none1(self):
        input_json = {'input_size_in_bytes': {'fastq1': 93520,
                                              'fastq2': 97604,
                                              'bwa_index': 3364568}}
        with self.assertRaises(B.AppNameUnavailableException):
            B.benchmark('some_weird_name', input_json, raise_error=True)

    def test_benchmark_none2(self):
        input_json = {'input_size_in_bytes': {'fastq1': 93520,
                                              'fastq2': 97604,
                                              'bwa_index': 3364568}}
        res = B.benchmark('some_weird_name', input_json)
        assert res is None


if __name__ == '__main__':
    unittest.main()
