#!/use/bin/zsh

for i in `echo ".zshrc_env .zshrc_extenv .zshrc_func .zshrc_extfunc"`
do
  TARGET_DIR=${HOME}/${i}
  if [ -d ${TARGET_DIR} ]; 
  then
    for i in `ls ${TARGET_DIR}`
    do
      echo "sourcing ${TARGET_DIR}/${i}"
      source ${TARGET_DIR}/${i}
    done
  fi
done
