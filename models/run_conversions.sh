#!/bin/bash

model=$1

python3.10 convert-to-ggml.py ${model}/ 0
python3.10 convert-to-ggml.py ${model}/ 1
./quantize ${model}/ggml-model-f16.bin ${model}/ggml-model-q4_0.bin 2
./quantize ${model}/ggml-model-f16.bin ${model}/ggml-model-q4_1.bin 3
