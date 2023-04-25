#!/bin/bash
file_name=$1

field_name=$2

field_value=$3
cat  $filed_name $filed_value  $file_name>${file_name:0:2}-$filed_name-$filed_value.csv
head -n 1 $file_name>>${file_name:0:2}-$field_name-$field_value.csv
cat $file_name | grep -w $field_value>>${file_name:0:2}-$field_name-$field_value.csv
