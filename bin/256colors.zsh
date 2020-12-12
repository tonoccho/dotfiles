#!/usr/bin/env zsh
# https://qiita.com/k_ui/items/b02b93e3af13023c0bfd
#
for c in {000..255}
do 
  echo -n "\e[38;5;${c}m $c" 
  [ $(($c%16)) -eq 15 ] && echo
done
echo
