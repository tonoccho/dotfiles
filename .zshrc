#!/use/bin/zsh

for i in `echo .zshrc_env .zshrc_func .zshrc_extenv .zshrc_extfunc`
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
