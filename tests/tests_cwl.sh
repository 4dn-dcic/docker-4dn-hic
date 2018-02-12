CWL_NAME=$1
CWL_FILENAME=$1.cwl
INPUT_JSON_NAME=$1.input.json
CWD=$(pwd)
OUTDIR=$CWD/tests/test_outdir
LOCAL_CWL_TMPDIR=$CWD/tests/test_tmp
CWL_RUNNER=$(which cwltool)
RUNNER_FLAGS="--copy-outputs --no-read-only --no-match-user --outdir $OUTDIR --tmp-outdir-prefix $LOCAL_CWL_TMPDIR --tmpdir-prefix $LOCAL_CWL_TMPDIR --non-strict --debug"
cd cwl
$CWL_RUNNER $RUNNER_FLAGS $CWL_FILENAME ../tests/test_input_json/$INPUT_JSON_NAME | python $CWD/tests/json_null_test.py
cd ..
