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
        assert res['aws']['recommended_instance_type'] == 't2.micro'
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

    def test_benchmark5(self):
        input_json = {'input_size_in_bytes': {'input_pairsams': [1000000000,
                                                                 2000000000,
                                                                 3000000000]},
                      'parameters': {'nThreads': 32}}
        res = B.benchmark('pairsam-merge', input_json)
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 'c4.8xlarge'
        print(res)

    def test_benchmark6(self):
        input_json = {'input_size_in_bytes': {'input_pairsam': 1000000000}}
        res = B.benchmark('pairsam-markasdup', input_json)
        print(res)
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 'r4.large'

    def test_benchmark7(self):
        input_json = {'input_size_in_bytes': {'input_pairsam': 1000000000}}
        res = B.benchmark('pairsam-filter', input_json)
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 't2.xlarge'
        print(res)

    def test_benchmark8(self):
        input_json = {'input_size_in_bytes': {'input_pairs': 1000000000}}
        res = B.benchmark('addfragtopairs', input_json)
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 't2.micro'
        print(res)

    def test_benchmark9(self):
        input_json = {'input_size_in_bytes': {'input_pairs': [1000000000,
                                                              2000000000,
                                                              3000000000]},
                      'parameters': {'ncores': 16,
                                     'maxmem': '1900g'}}
        res = B.benchmark('hi-c-processing-partb', input_json)
        print(res)
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 'x1.32xlarge'

    def test_benchmark10(self):
        input_json = {'input_size_in_bytes': {'input_pairs': 1000000000}}
        res = B.benchmark('pairs-patch', input_json)
        print(res)
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 't2.micro'

    def test_benchmark11(self):
        input_json = {'input_size_in_bytes': {'input_cool': 1000000000,
                                              'input_hic': 2000000000},
                      'parameters': {'ncores': 1}}
        res = B.benchmark('hi-c-processing-partc', input_json)
        print('hi-c-processing-partc')
        print(res)
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 'r4.large'
    
    def test_benchmark12(self):
        input_json = {'input_size_in_bytes': {'input_bams': [1000000000, 2000000000],
                                              'chromsize': 200000},
                      'parameters': {'nthreads_parse_sort': 1,
                                     'nthreads_merge': 8}}
        res = B.benchmark('hi-c-processing-bam', input_json)
        print('hi-c-processing-bam')
        print("benchmark12")
        print(res)
        assert 'aws' in res
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 't2.2xlarge'
        assert res['min_CPU'] == 8
        assert int(res['total_size_in_GB']) == 39

    def test_benchmark13(self):
        input_json = {'input_size_in_bytes': {'input_pairs': [1000000000,
                                                              2000000000,
                                                              3000000000]},
                      'parameters': {'nthreads': 8,
                                     'maxmem': '32g'}}
        res = B.benchmark('hi-c-processing-pairs', input_json)
        print('hi-c-processing-pairs')
        print("benchmark13")
        print(res)
        assert 'aws' in res
        assert res['min_CPU'] == 8
        assert int(res['total_mem_in_MB']) == 45776
        assert int(res['total_size_in_GB']) == 43
        assert 'recommended_instance_type' in res['aws']
        assert res['aws']['recommended_instance_type'] == 'r4.2xlarge'
        
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
