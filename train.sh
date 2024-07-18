#!/bin/bash

for i in {1..100}
do
   echo "Running iteration $i"
   python -m torch.distributed.launch --nproc_per_node=4 code/lepard-main/main.py code/lepard-main/configs/train/3dfront.yaml
done
