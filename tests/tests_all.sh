CWD=$(pwd)
OUTDIR=$CWD/tests/test_outdir
CWL_RUNNER=$(which cwltool)
RUNNER_FLAGS="--no-read-only --outdir=$OUTDIR"
cd cwl_awsem
$CWL_RUNNER $RUNNER_FLAGS md5.cwl ../tests/test_input_json/md5_input.json | python $CWD/tests/json_null_test.py
$CWL_RUNNER $RUNNER_FLAGS fastqc-0-11-4-1.cwl ../tests/test_input_json/fastqc_input.json | python $CWD/tests/json_null_test.py
$CWL_RUNNER $RUNNER_FLAGS hi-c-processing-partb.cwl ../tests/test_input_json/hi-c-processing-partb.input.json | python $CWD/tests/json_null_test.py
$CWL_RUNNER $RUNNER_FLAGS cool2mcool.cwl ../tests/test_input_json/cool2mcool.input.json | python $CWD/tests/json_null_test.py
