#!/bin/bash

HEIGHT=240
WIDTH=426
FRAMES=16
BATCH=1
STEPS=100

set -x

python inference_singleGPU.py "../configs/opensora-v1-1/inference/sample.py" \
    --ckpt-path OpenSora-STDiT-v2-stage3/model.safetensors \
    --prompt-path ../assets/texts/char.txt \
    --image-size $HEIGHT $WIDTH \
    --num-frames $FRAMES \
    --batch-size $BATCH \
    --num-sampling-steps $STEPS 
