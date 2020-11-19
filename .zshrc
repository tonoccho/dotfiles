#!/use/bin/zsh

export ZSH=${HOME}/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git)
source ${ZSH}/oh-my-zsh.sh

if [ -d ${HOME}/.zshrc_env ]; then
  for i in `ls ${HOME}/.zshrc_env`
  do
    source ${HOME}/.zshrc_env/${i}
  done
fi

if [ -d ${HOME}/.zshrc_func ]; then
  for i in `ls ${HOME}/.zshrc_func`
  do
    source ${HOME}/.zshrc_func/${i}
  done
fi

splash
