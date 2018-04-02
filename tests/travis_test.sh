CWL_NAME_LIST=`ls -1 cwl/*cwl | sed 's/\.cwl//g' | sed 's/cwl\///g'`
if [ "$DOCKER" == "on" ]; then
      docker build -t $LOCAL_NAME .;
      source tests/tests.sh;
fi;
if [ "$TRAVIS_PULL_REQUEST" != false ]; then
       docker tag $LOCAL_NAME REMOTE_NAME:$TRAVIS_PULL_REQUEST_BRANCH;
else
       docker tag $LOCAL_NAME REMOTE_NAME:$TRAVIS_BRANCH;
fi;
for CWL_NAME in $CWL_NAME_LIST; do
       source tests/tests_cwl.sh $CWL_NAME;
done

