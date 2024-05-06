#!/bin/bash

cargo build --target=wasm32-unknown-unknown --release
cp "target/wasm32-unknown-unknown/release/gsc_rust_wasm_101.wasm" "."
