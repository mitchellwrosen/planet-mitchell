### Summary

A modern Haskell standard library.

This package is meant to be a (somewhat) beginner-friendly, comprehensive
standard library and entrypoint into the Haskell ecosystem.

It contains no new code, only re-exports from `base` and various well-known
(or not-so-well-known) packages.

Some subjective decisions have been made along the way:

- I've stripped `Control.`, `Data.`, `Foreign.`, etc. prefixes from modules. The
  idea here is that, if a name such as `Applicative` is sufficiently unambiguous
  in the Haskell world, it deserves as short a module name as possible.

  See the [elm standard library](http://package.elm-lang.org/packages/elm-lang/core/latest)
  for inspiration.

- The module hierarchy is not perfectly faithful to the underlying packages, and
  I've invented a few new modules along the way, such as `Concurrency`,
  `Parallelism`, `Eval`, and `Debug`.

  I imagine this will be confusing to experienced Haskellers, but hopefully
  helpful for beginners.

And some objectively good decisions, too:

- Many fewer partial functions :)

### Packages

- `ansi-terminal`

  TODO

- `async`

  `async` provides the `Async` type and high-level concurrency functions like
  `concurrently`, `race`, etc.

  It is re-exported from the `Concurrency` module.

- `atomic-primops`

  TODO

- `bits`

  `bits` provides a few missing bits from `base` like `lsb`.

  It is re-exported from the `Bits` module.

- `bytestring`

  TODO

- `bytestring-trie`

  TODO

- `comonad`

  TODO

- `compact`

  TODO

- `constraints`

  TODO

- `containers`

  TODO

- `contravariant`

  TODO

- `deepseq`

  TODO

- `directory`

  TODO

- `distributive`

  TODO

- `dlist`

  TODO

- `erf`

  TODO

- `extra`

  TODO

- `filepath`

  TODO

- `foldl`

  TODO

- `gauge`

  TODO

- `hashable`

  TODO

- `heaps`

  TODO

- `hedgehog`

  `hedgehog` is a property-based testing library.

  It is re-exported from the `Test`, `Test.Gen`, and `Test.Range` modules.

- `list-transformer`

  `list-transformer` implements the "ListT done right" type with a clean, simple
  API.

  It is re-exported from the `ListT` module.

- `logict`

  TODO

- `managed`

  TODO

- `megaparsec`

  TODO

- `mmorph`

  `mmorph` provides "functors over monads" and "monads over monads".

  It is re-exported from the `MFunctor` and `MMonad` modules, and also provides
  `generalize` in the `Identity` module.

- `monad-ste`

  TODO

- `mtl`

  TODO

- `multiset`

  TODO

- `mwc-random`

  TODO

- `network`

  TODO

- `nf`

  TODO

- `optparse-applicative`

  TODO

- `parallel`

  TODO

- `prettyprinter`

  TODO

- `primitive`

  TODO

- `profunctors`

  TODO

- `psqueues`

  TODO

- `reflection`

  TODO

- `regex-applicative`

  TODO

- `safe-exceptions`

  TODO

- `semigroups`

  TODO

- `stm`

  TODO

- `stm-containers`

  TODO

- `tagged`

  TODO

- `time`

  TODO

- `text`

  TODO

- `text-short`

  TODO

- `transformers`

  TODO

- `transformers-base`

  TODO

- `typed-process`

  TODO

- `unagi-chan`

  TODO

- `unliftio`

  TODO

- `unordered-containers`

  TODO

- `vector`

  TODO

- `weigh`

  TODO

- `writer-cps-mtl`

  TODO

# Packages to know

Here are some interesting packages that (currently) are not part of this
standard library:

- `promises`
- `vault`
