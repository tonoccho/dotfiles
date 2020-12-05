#!/bin/bash

SCRIPT_ABS_PATH=`realpath .`

for i in `find ${SCRIPT_ABS_PATH}/ -type d -name .git -prune -o -type d -print`
do 
  PATH_NAME=`basename ${i}`
  [ ${PATH_NAME} = "dotfiles" ] && continue

  if [ ! -d ${HOME}/${PATH_NAME} ]
  then
    mkdir ${HOME}/${PATH_NAME}
  fi
  for i in `ls ${PATH_NAME}`
  do
    ln -snfv ${SCRIPT_ABS_PATH}/${PATH_NAME}/${i} ${HOME}/${PATH_NAME}/${i} > /dev/null 2>&1
  done
done

for i in `find ${SCRIPT_ABS_PATH} -maxdepth 1 -type d -name .git -prune -o -type f -print`
do
  FILE_NAME=`basename ${i}`
  [[ ${FILE_NAME} =~ ^.+\/dotfiles$ ]] && continue
  [[ ${FILE_NAME} =~ ^.gitignore$ ]] && continue
  [[ ${FILE_NAME} =~ ^mklink.sh$ ]] && continue
  [[ ${FILE_NAME} =~ ^README.md$ ]] && continue
  [[ ${FILE_NAME} =~ ^.+\.swp$ ]] && continue

  ln -snfv ${SCRIPT_ABS_PATH}/${FILE_NAME} ${HOME}/${FILE_NAME} > /dev/null 2>&1
done
