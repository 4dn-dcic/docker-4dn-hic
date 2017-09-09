CWL_RUNNER=$(which cwltool)
echo $CWL_RUNNER
CWD=$(pwd)
OUTDIR=$CWD/tests/test_outdir
cd cwl_awsem
$CWL_RUNNER --outdir=$OUTDIR md5.cwl ../tests/test_input_json/md5_input.json
$CWL_RUNNER --outdir=$OUTDIR fastqc-0-11-4-1.cwl ../tests/test_input_json/fastqc_input.json
$CWL_RUNNER --outdir=$OUTDIR hi-c-processing-partb.cwl ../tests/test_input_json/hi-c-processing-partb.input.json
$CWL_RUNNER --outdir=$OUTDIR cool2mcool.cwl ../tests/test_input_json/cool2mcool.input.json
