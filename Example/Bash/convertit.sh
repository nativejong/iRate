#!/bin/bash
SRC='/Users/jblaine/GitHub/Jong/FPanda/chiang-mai'

printf "What is your name?  -> "
read NAME


#####################################
allThreads=(40 60 58 87 80 120 180 20 29 76 152 167 1024)

for i in *.png;
    do

    # if [ -d "${i}" ]; then
        # mv "${i}" "${SRC}/${i}"
        echo "Moving: %s\n"  "${i}";

        for t in ${allThreads[@]}; do
            echo "Moving: %s\n"  "${i}";
            cp ${i} ${t}${i}
            sips -z ${t} ${t} ${t}${i}
        done
    # fi
done

