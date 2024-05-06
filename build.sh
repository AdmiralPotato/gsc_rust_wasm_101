#!/bin/bash

cargo install wasm-opt
cargo build --target=wasm32-unknown-unknown --release
cp "target/wasm32-unknown-unknown/release/gsc_rust_wasm_101.wasm" "."
wasm-opt -O3 -o ./gsc_rust_wasm_101.wasm ./gsc_rust_wasm_101.wasm
