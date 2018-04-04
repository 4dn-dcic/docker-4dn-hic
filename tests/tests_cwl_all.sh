CWL_NAME_LIST=`ls -1 cwl/*cwl | sed 's/\.cwl//g' | sed 's/cwl\///g'`
for CWL_NAME in $CWL_NAME_LIST; do
       source tests/tests_cwl.sh $CWL_NAME;
done

