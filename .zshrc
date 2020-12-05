#!/use/bin/zsh

do
  TARGET_DIR=${HOME}/${i}
  if [ -d ${TARGET_DIR} ]; 
  then
    for i in `ls ${TARGET_DIR}`
    do
      source ${TARGET_DIR}/${i}
    done
  fi
done
