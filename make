#!/bin/sh
set -e

case "$1" in
  "build")
    cabal new-build -O0 "${@:2}"
    ;;
  "docs")
    cabal new-haddock -O0
    ;;
  "freeze")
    rm -f cabal.project.freeze
    cabal new-freeze
    ;;
  "ghcid")
    ghcid -c 'cabal new-repl -O0' --restart mitchell-stdlib.cabal
    ;;
  "repl")
    cabal new-repl -O0 "${@:2}"
    ;;
  *)
    echo "make {build, docs, freeze, ghcid, repl}" >&2
    exit 1
    ;;
esac
