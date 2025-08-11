#/usr/bin/env bash

G512_MAIN_COLOR=999999
G512_SUB_COLOR=6666ff

for i in $(echo 'keys numeric')
do
  g512-led -g ${i} ${G512_MAIN_COLOR}
done

for i in $(echo 'indicators fkeys modifiers arrows functions')
do
  g512-led -g ${i} ${G512_SUB_COLOR}
done
