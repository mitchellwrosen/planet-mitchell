#!/bin/sh
set -e

case "$1" in
  "build")
    cabal new-build -O0
    ;;
  "docs")
    cabal new-haddock -O0
    ;;
  "freeze")
    rm -f cabal.project.freeze
    cabal new-freeze
    ;;
  "repl")
    cabal new-repl -O0
    ;;
  *)
    echo "make {build, docs, freeze, repl}" >&2
    exit 1
    ;;
esac
