#!/bin/bash

# activate conda environment
eval "$(conda shell.bash hook)"
conda activate toy

python /workspace/toy_runai/toy.py \
  --epochs 200 \
  --learning_rate 0.1
