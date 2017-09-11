import unittest
from Benchmark import Benchmark as B

class TestGetOptimalInstanceType(unittest.TestCase):
    def test_get_optimal_instance_type1(self):
        res = B.get_optimal_instance_type()
        assert 'instance_type' in res
        assert res['instance_type'] == 't2.nano'

    def test_get_optimal_instance_type2(self):
        res = B.get_optimal_instance_type(cpu=32, mem=16)
        assert 'instance_type' in res
        assert res['instance_type'] == 'c4.8xlarge'

if __name__ == '__main__':
    unittest.main()

