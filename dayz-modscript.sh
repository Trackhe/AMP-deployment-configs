#!/bin/bash
find ./dayz/223350/steamapps/workshop/content/221100/ -depth -name "*[A-Z]*" -print0 |\
 xargs -0 -I {} bash -c "mv \"{}\" \"\`echo \"{}\" | sed 's,\(.*\)\/\(.*\),\1\/\L\2,'\`\"";\
 cd ./dayz/223350 &&\
 find ./steamapps/workshop/content/221100 -maxdepth 1 -mindepth 1 -type d -exec ln -sf -t ./ {} +
exit 0