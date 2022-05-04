#!/bin/sh
branch=pre_deploy
key=$1
bn=$2
GIT=`which git`
# REPO_DIR=/
# cd ${REPO_DIR}

ss=$(${GIT} ls-remote --heads https://ImsAbhishek:${key}@github.com/ImsAbhishek/My-app.git $branch | wc -l)
if [[ "$ss" == 0 ]];
then
 echo "branch does't exist"
 ${GIT} init
 ${GIT} checkout -b $branch
else
    echo "branch exist"
    #${GIT} fetch https://ImsAbhishek:${key}@github.com/ImsAbhishek/My-app.git
   #${GIT} pull https://ImsAbhishek:${key}@github.com/ImsAbhishek/My-app.git
   ${GIT} checkout $branch
fi
${GIT} add --all .
${GIT} commit -m "Test commit${bn}"
${GIT} push https://ImsAbhishek:${key}@github.com/ImsAbhishek/My-app.git $branch