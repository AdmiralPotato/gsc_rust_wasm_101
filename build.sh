#!/bin/bash

cargo install wasm-opt
rustup target add wasm32-unknown-unknown
cargo build --target=wasm32-unknown-unknown --release
cp "target/wasm32-unknown-unknown/release/gsc_rust_wasm_101.wasm" "."

# oops, the optimized build actually adds another string at the end of the WASM outout and makes it larger by a few bytes
# perhaps larger and more complex modules will actually be made smaller with this step; retry later
# wasm-opt -O3 -o ./gsc_rust_wasm_101-optimized.wasm ./gsc_rust_wasm_101.wasm
