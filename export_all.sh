#!/bin/bash

# see https://github.com/conda/conda/issues/5165

ENVS=$(conda env list | grep '^\w' | cut -d' ' -f1)
for env in $ENVS; do
    source activate $env
    conda env export > $env.yml
    echo "Exporting $env"
done