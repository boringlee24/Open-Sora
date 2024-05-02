#!/bin/bash

HEIGHT=240
WIDTH=426
FRAMES=16
BATCH=1
STEPS=100

# HEIGHT_WIDTH_PAIRS=(
#     "144 256"
#     "360 640"
#     "480 854"
#     "720 1280"
#     "1080 1920"
# )

set -x

# for pair in "${HEIGHT_WIDTH_PAIRS[@]}"
# for STEPS in 60 100 140
# do
    # HEIGHT=$(echo "$pair" | cut -d ' ' -f1)
    # WIDTH=$(echo "$pair" | cut -d ' ' -f2)
python inference_profiling.py "../configs/opensora-v1-1/inference/sample.py" \
    --ckpt-path OpenSora-STDiT-v2-stage3/model.safetensors \
    --prompt-path ../assets/texts/char.txt \
    --image-size $HEIGHT $WIDTH \
    --num-frames $FRAMES \
    --batch-size $BATCH \
    --num-sampling-steps $STEPS
# done
