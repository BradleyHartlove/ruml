ROOT_DIR := justfile_directory()
SRC_DIR := ROOT_DIR / "ruml"
EXAMPLES_DIR := ROOT_DIR / "ruml-examples"

# Build the ruml library
build:
    cargo build --manifest-path "{{SRC_DIR}}/Cargo.toml"

# Build the ruml-examples library
build-examples:
    cargo build --manifest-path "{{EXAMPLES_DIR}}/Cargo.toml"

build-all: build build-examples

alias ba := build-all

# Run tests against the ruml library
test:
    cargo test --manifest-path "{{SRC_DIR}}/Cargo.toml"

# Run live tests with ruml-examples library
examples:
    cargo run --manifest-path "{{EXAMPLES_DIR}}/Cargo.toml"
