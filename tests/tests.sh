CWL_RUNNER=$(which cwl-runner)
CWD=$(pwd)
OUDDIR=$CWD/tests/test_outdir
cd cwl_awsem
$CWL_RUNNER --outdir=$OUTDIR md5.cwl ../tests/test_input_json/md5_input.json
