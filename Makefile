.PHONY: build
build:
	cabal new-build -O0

.PHONY: repl
repl:
	cabal new-repl -O0

.PHONY: freeze
freeze:
	rm -f cabal.project.freeze
	cabal new-freeze

.PHONY: docs
docs:
	cabal new-haddock -O0
