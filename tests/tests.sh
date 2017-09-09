CWL_RUNNER=$(which cwl-runner)
mkdir -p tmp_out
cd cwl_awsem
$CWL_RUNNER --outdir=../tmp_out md5.cwl ../tests/test_input_json/md5_input.json
