#!/bin/bash


# PATH_NAME=$(pwd)
# cd ${PATH_NAME}

# filePath=${filePath:3}

# if [ -z "$filePath" ]; then
#   echo '##### file not found #####'
#   exit
# fi

git config --global user.email "ohyoungwoo824@gmail.com"
git config --global user.name "HelloNoa"

count = 1;
while :
do
  echo '##### auto push start #####'
  filename=`ls -1 | head`
  commitMsg=$filename

  git add ./
  git status
  # echo "${commitMsg}"
  git commit -m "${commitMsg}"
  git push --set-upstream origin main
  count = count + 1 
  echo "##### auto push end ##### ${count}"
  # timeout -s 9 1s sleep 10
  # timeout 1 read word
  timeout 600 tail
done