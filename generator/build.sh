#!/bin/sh

rm -rf target || true
podman build -t libvips-builder .
