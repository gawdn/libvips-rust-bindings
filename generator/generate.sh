#!/bin/sh
rm -rf target || true
podman run --rm -v ./:/src -v ./../src/:/bindings -e CARGO_HTTP_MULTIPLEXING=false -e RUSTFLAGS='-C target-feature=-crt-static' -e BINDINGS_DIR=/bindings -w /src -it libvips-builder sh -c "cargo update"
podman run --rm -v ./:/src -v ./../src/:/bindings -e CARGO_HTTP_MULTIPLEXING=false -e RUSTFLAGS='-C target-feature=-crt-static' -e BINDINGS_DIR=/bindings -w /src -it libvips-builder sh -c "cargo build"
