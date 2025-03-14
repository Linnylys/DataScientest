#!/bin/bash

rtx_tab=(rtx3060 rtx3070 rtx3080 rtx3090 rx6700)

echo  "$(date)" >> ~/exam_SIPILE/exam_bash/sales.txt
let i=0
while [ $i -lt 5 ]
do
link_rtx="http://0.0.0.0:5000/${rtx_tab[$i]}"
link_rtx_curl=$(curl $link_rtx)
echo "${rtx_tab[$i]}:$link_rtx_curl" >> ~/exam_SIPILE/exam_bash/sales.txt
let "i=i+1"
done


 

