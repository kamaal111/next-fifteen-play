# List available commands
default:
    just --list --unsorted

# Run application in dev mode
run-dev: install-modules
    pnpm run dev

# Build application
build:
    pnpm run build
    touch out/.nojekyll

# Lint
lint:
    pnpm run lint

# Script to run when creating the dev container
post-create-dev-container:
    just .devcontainer/post-create
    just bootstrap

# Bootstrap project
bootstrap: prepare

# Prepare project to work with
prepare: install-modules

[private]
install-modules:
    echo Y | pnpm i
