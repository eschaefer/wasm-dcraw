#!/bin/bash

emcc dcraw.c -lm -DNODEPS \
    -s WASM=1 \
    -s INVOKE_RUN=0 \
    -s EXTRA_EXPORTED_RUNTIME_METHODS='["callMain"]' \
    -o dcraw.js