WDL_NAME=$1
WDL_FILENAME=$1.wdl
INPUT_JSON_NAME=$1.input.json
CWD=$(pwd)
OUTDIR=$CWD/tests/test_outdir
LOCAL_WDL_TMPDIR=$CWD/tests/test_tmp
WDL_RUNNER="java -jar cromwell/cromwell-29.jar"
RUNNER_FLAGS=""
cd wdl
$WDL_RUNNER $RUNNER_FLAGS $WDL_FILENAME ../tests/test_input_json/wdl/$INPUT_JSON_NAME | python $CWD/tests/json_null_test.py
