#!/bin/sh
branch=qq
GIT=`which git`
# REPO_DIR=/
# cd ${REPO_DIR}
${GIT} init
ss=$(${GIT} ls-remote --heads https://ImsAbhishek:${key}@github.com/ImsAbhishek/My-app.git $branch | wc -l)
if [[ "$ss" == 0 ]];
then
 echo "branch does't exist"
 ${GIT} checkout -b $branch
else
    echo "branch exist"
   ${GIT} checkout $branch
fi
${GIT} add --all .
${GIT} commit -m "Test commit"
${GIT} push https://ImsAbhishek:${key}@github.com/ImsAbhishek/My-app.git $branch