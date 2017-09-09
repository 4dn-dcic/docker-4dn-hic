mkdir -p tmp_out
cd cwl_awsem
cwl-runner --outdir=../tmp_out md5.cwl ../tests/test_input_json/md5_input.json
