#!/bin/bash

if [ -d ${HOME}/.bashrc_env ]; then
  for i in `ls ${HOME}/.bashrc_env`
  do
    source ${HOME}/.bashrc_env/${i}
  done
fi

if [ -d ${HOME}/.bashrc_func ]; then
  for i in `ls ${HOME}/.bashrc_func`
  do
    source ${HOME}/.bashrc_func/${i}
  done
fi

splash
