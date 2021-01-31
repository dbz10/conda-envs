#!/bin/bash
for spec in $(ls *.yml)
do
conda env create -f $spec 
done
