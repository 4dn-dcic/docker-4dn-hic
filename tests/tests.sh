CWL_FILENAME=$1
INPUT_JSON_NAME=$2
CWD=$(pwd)
OUTDIR=$CWD/tests/test_outdir
CWL_RUNNER=$(which cwltool)
RUNNER_FLAGS="--no-read-only --outdir=$OUTDIR"
cd cwl_awsem
$CWL_RUNNER $RUNNER_FLAGS $CWL_FILENAME ../tests/test_input_json/$INPUT_JSON_NAME
