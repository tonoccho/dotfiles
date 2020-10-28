#!/bin/bash

SCRIPT_PATH=`dirname $0`
SCRIPT_ABS_PATH=`realpath ${SCRIPT_PATH}`

for i in ${SCRIPT_ABS_PATH}/.??*
do
  [[ ${i} =~ ^.+\.git$ ]] && continue
  [[ ${i} =~ ^.+\.swp$ ]] && continue
  [[ ${i} =~ ^.+\.gitignore$ ]] && continue
  
  LINK_TARGET=${HOME}/`basename ${i}`

  if [ -f ${LINK_TARGET} ]
  then
    mv ${LINK_TARGET} ${LINK_TARGET}.backup
  fi
  ln -snfv ${i} ${LINK_TARGET}
done
