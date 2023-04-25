#!/bin/bash
echo "Give file name:"
read file_name

echo "Give the name of field:"
read field_name

echo "Give field value:"
read field_value
cat  $filed_name $filed_value  $file_name>${file_name:0:2}-$filed_name-$filed_value.csv
head -n 1 $file_name>>${file_name:0:2}-$field_name-$field_value.csv
cat $file_name | grep -w $field_value>>${file_name:0:2}-$field_name-$field_value.csv
