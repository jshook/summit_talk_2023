#!/bin/bash
export PATH=`pwd`/bin:$PATH
export SHELL="smallshell"

if [ ! -d "cast" ]
then
 printf "No cast directory is here. Make sure you are in the right place.\n"
 exit 2
fi

set -x
for cast in $(ls demos/*.cast)
do
 printf "cast: '%s'\n" ${cast}
 cp $cast cast/
done

for demo in $(ls demos/*.sh)
do
 printf "demo: '%s'\n" ${demo}
 name=$(basename $demo)
 name=${name%%.sh}
 printf "name: %s\n" ${name}
 asciinema rec -i 1 --cols 132 --rows 40 --overwrite -t $name cast/$name.cast -c "bash -x demos/$name.sh"
done


