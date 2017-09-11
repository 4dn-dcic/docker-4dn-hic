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
        res = B.benchmark('md5', {'input_size_in_bytes': {'input_file': 20000}})
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 't2.nano'
        print(res)

    def test_benchmark2(self):
        res = B.benchmark('fastqc-0-11-4-1', {'input_size_in_bytes': {'input_fastq': 20000},'threads': 2})
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 't2.medium'
        print(res)

    def test_benchmark3(self):
        res = B.benchmark('bwa-mem', {'input_size_in_bytes': {'fastq1': 93520, 'fastq2': 97604, 'bwa_index': 3364568}, 'nThreads': 4})
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 't2.xlarge'
        print(res)

    def test_benchmark_none(self):
        res = B.benchmark('some_weird_name', {'input_size_in_bytes': {'fastq1': 93520, 'fastq2': 97604, 'bwa_index': 3364568}, 'nThreads': 4})
        assert res is None


if __name__ == '__main__':
    unittest.main()

