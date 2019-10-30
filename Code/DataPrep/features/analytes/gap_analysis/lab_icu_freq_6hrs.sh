# Adult Decompensation Prediction
# 
# Copyright 2019 Ziyuan Shen, Duke Institute for Health Innovation (DIHI), Duke University School of Medicine, Durham NC.
# 
# All Rights Reserved.

#! /bin/bash

output_file='../../../../../Data/Processed/features/analytes/gap_analysis/lab_icu_freq_6hrs_temp.csv'

if [ -f $output_file ] ; then
    rm $output_file
fi

awk -F , 'BEGIN{print "component_name,count"}' >> $output_file

for file in ../../../../../Data/Processed/features/analytes/gap_analysis/lab_icu_trunc_data_6hrs/*.csv
do
    echo Now scanning file: $file
    awk -vFPAT='([^,]*)|("[^"]+")' -vOFS=, \
    '(FNR>1){lab[$2]++}END{for (i in lab) print i, lab[i]}' \
    $file >> $output_file
done