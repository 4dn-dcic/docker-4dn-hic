CWL_NAME=$1
CWL_FILENAME=$1.cwl
INPUT_JSON_NAME=$2.input.json
CWD=$(pwd)
OUTDIR=$CWD/tests/test_outdir
CWL_RUNNER=$(which cwltool)
RUNNER_FLAGS="--no-read-only --outdir=$OUTDIR"
cd cwl_awsem
$CWL_RUNNER $RUNNER_FLAGS $CWL_FILENAME ../tests/test_input_json/$INPUT_JSON_NAME | python $CWD/tests/json_null_test.py
