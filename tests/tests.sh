CWL_RUNNER=$(which cwltool)
echo $CWL_RUNNER
CWD=$(pwd)
OUTDIR=$CWD/tests/test_outdir
cd cwl_awsem
$CWL_RUNNER --outdir=$OUTDIR md5.cwl ../tests/test_input_json/md5_input.json
