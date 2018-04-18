.PHONY: build
build:
	cabal new-build -O0

.PHONY: repl
repl:
	cabal new-repl -O0

.PHONY: docs
docs:
	cabal new-haddock -O0
