#!/bin/sh
nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits | while read line; do echo "$line°C"; done

