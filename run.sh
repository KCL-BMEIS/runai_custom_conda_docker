#!/bin/bash

# activate conda environment
eval "$(conda shell.bash hook)"
conda env update -f /workspace/toy_runai/env.yml
conda activate toy

python /workspace/toy_runai/toy.py \
  --epochs 200 \
  --learning_rate 0.1
