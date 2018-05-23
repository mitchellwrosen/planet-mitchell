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
    TIMESTAMP=$(cabal new-update | grep , | cut -d, -f2 | sed 's/.$//')
    rm -f cabal.project.freeze
    cabal new-freeze
    echo "index-state: $TIMESTAMP" >> cabal.project.freeze
    ;;
  "repl")
    cabal new-repl -O0
    ;;
  *)
    echo "make {build, docs, freeze, repl}" >&2
    exit 1
    ;;
esac
