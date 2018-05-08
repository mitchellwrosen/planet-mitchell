# WIP

### Summary

A modern Haskell standard library.

`mitchell-stdlib` is a terribly-named, comprehensive standard library and
entrypoint into the Haskell ecosystem.

It contains no new code, only re-exports from `base` and various well-known
packages, similar to [https://hackage.haskell.org/package/rebase](rebase).
However, unlike `rebase`, the following subjective decisions have been made
along the way:

- `Control.`, `Data.`, `Foreign.`, etc. module prefixes are stripped. The idea
  here is that, if a name such as `Applicative` is sufficiently unambiguous in
  the Haskell ecosystem, it deserves as short a module name as possible.

  See the [elm standard library](http://package.elm-lang.org/packages/elm-lang/core/latest)
  for inspiration.

- The module hierarchy is not faithful to the underlying packages. Many modules
  contain related re-exports from multiple packages, and I've invented a few new
  sin-bin modules such as `Concurrency`, `Parallelism`, `Eval`, and `Debug`.

- Redundant functions like `sequence` are not re-exported.

- Odd, uncommon types and functions (like `WrappedApplicative`) are not
  re-exported.

- Partial functions are discouraged and mostly live in `.Partial` modules.

- `String` is heavily discouraged, and many `String` IO functions are not
  re-exported; `Text` and/or `ByteString` versions are re-exported instead.

- `MonadIO` / `MonadUnliftIO` are used where possible.

- Asynchronous exception handling is done right.

- Relatively obscure packages that provide valuable functionality
  (like `nf` and `writer-cps-mtl`) are included.

### Packages

_(Currently in-progress)_ Every dependency of `mitchell-stdlib` except `base` is
enabled by a Cabal flag that defaults to `False`. This allows you to use only
the bits of `mitchell-stdlib` that you need. I recommend you:

* Start with the most stripped-down version with no flags, using the haddocks
  to ascertain what could be there (they were generated with every flag
  enabled).
* When you hit a build error due to a missing type or function, enable the
  corresponding flag.

The packages:

- `ansi-terminal`

- `async`

  `async` provides the `Async` type and high-level concurrency functions like
  `concurrently`, `race`, etc.

  It is re-exported from the `Concurrency` module.

- `atomic-primops`

- `bits`

  `bits` provides a few missing bits from `base` like `lsb`.

  It is re-exported from the `Bits` module.

- `bytestring`

- `bytestring-trie`

- `comonad`

- `compact`

- `constraints`

- `containers`

- `contravariant`

- `deepseq`

- `distributive`

- `dlist`

- `erf`

- `extra`

- `filepath`

- `foldl`

- `gauge`

- `hashable`

- `heaps`

- `hedgehog`

  `hedgehog` is a property-based testing library.

  It is re-exported from the `Test`, `Test.Gen`, and `Test.Range` modules.

- `list-transformer`

  `list-transformer` implements the "ListT done right" type with a clean, simple
  API.

  It is re-exported from the `ListT` module.

- `logict`

- `managed`

- `megaparsec`

- `mmorph`

  `mmorph` provides "functors over monads" and "monads over monads".

  It is re-exported from the `MFunctor` and `MMonad` modules, and also provides
  `generalize` in the `Identity` module.

- `monad-ste`

- `mtl`

- `multiset`

- `mwc-random`

- `network`

- `nf`

- `optparse-applicative`

- `parallel`

- `prettyprinter`

- `primitive`

- `profunctors`

- `psqueues`

- `reflection`

- `regex-applicative`

- `semigroups`

- `stm`

- `stm-containers`

- `tagged`

- `time`

- `text`

- `text-short`

- `transformers`

- `transformers-base`

- `typed-process`

- `unagi-chan`

- `unliftio`

- `unordered-containers`

- `vector`

- `weigh`

- `writer-cps-mtl`

# Packages to know

Here are some interesting packages that (currently) are not part of this
standard library:

- `promises`
- `vault`
