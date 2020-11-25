#!/use/bin/zsh

export ZSH=${HOME}/.oh-my-zsh
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

autoload -Uz colors
colors

PROMPT="%K{236}%F{255}ﲾ %m  %n  %~ %# %f%k"
export RPROMPT="RPROMPT"
