# Learning how to create optimized WASM with Rust

An attempt at creating the smallest possible Rust WASM output, meaning that `wasm-pack` and `wasm-bindgen` are not things we can use as dependencies; their output for the same module is about 54k, and this is about 245b in comparison.

## Live Demo

https://admiralpotato.github.io/gsc_rust_wasm_101/

## Building

To build and generate the WASM output, use `./build.sh`

## Testing/previewing

Because the WASM binary _must_ be obtained via `fetch(...)`, the page must be visited from an HTTP server. Start an HTTP server in this folder and visit `/` at that server for it to work.

Got Python? `python -m http.server`

Got Node? `npx http-server`
