#!/bin/bash

SCRIPT_ABS_PATH=`realpath .`

for i in `find . -type d | grep -v "\.git"`
do
  [[ ${i} =~ ^\.$ ]] && continue

  if [ -d ${HOME}/${i} ]
  then 
    echo "${HOME}/${i} exists"
  else
    echo "${HOME}/${i} not exist"
    mkdir -p ${HOME}/${i}
  fi
done


for i in `find . -type f | grep -v "\.git/"`
do
  [[ ${i} =~ ^.+mklink\.sh$ ]] && continue
  [[ ${i} =~ ^.+README\.md$ ]] && continue
  [[ ${i} =~ ^.+lost\+found ]] && continue
  if [ -f ${HOME}/${i} ]
  then
    rm ${HOME}/${i}
  fi
  ln -snfv $(realpath ${i}) ${HOME}/${i}
done
