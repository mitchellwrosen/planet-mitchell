# WIP

### Summary

A modern Haskell standard library.

`mitchell-stdlib` is a terribly-named, comprehensive standard library and
entrypoint into the Haskell ecosystem.

It contains no new code, only re-exports from `base` and various well-known
packages, similar to [https://hackage.haskell.org/package/rebase](rebase).

- `Control.`, `Data.`, `Foreign.`, etc. module prefixes are stripped. The idea
  here is that, if a name such as `Applicative` is sufficiently unambiguous in
  the Haskell ecosystem, it deserves as short a module name as possible.

  See the [elm standard library](http://package.elm-lang.org/packages/elm-lang/core/latest)
  for inspiration.

- The module hierarchy is not faithful to the underlying packages. Many modules
  contain related re-exports from multiple packages, and I've invented a few new
  sin-bin modules such as `Concurrency`, `Parallelism`, `Eval`, and `Debug`.

- To reduce API surface area and encourage a consistent vocabulary, redundant
  functions like `sequence` and `mapM` are not re-exported.

- Odd, uncommon types and functions (like `WrappedApplicative`) are not
  re-exported.

- Partial functions are discouraged and mostly live in `.Partial` modules. (This
  is a work-in-progress).

- `String` is heavily discouraged, and many `String` IO functions are not
  re-exported; `Text` and/or `ByteString` versions are re-exported instead.

- `MonadIO` / `MonadUnliftIO` are used where possible.

- Asynchronous exception handling is done right.

- Relatively obscure packages that provide valuable functionality
  (like `nf` and `writer-cps-mtl`) are included.

### Packages

All dependencies of `mitchell-stdlib` except `base` are enabled by Cabal flags,
and packages are enabled by default:

* `bytestring`
* `containers`
* `text`

To use this package, I recommend you:

* Start with the most stripped-down version with no explicit flags, using the
  haddocks to figure out what could be there (they were generated with every
  flag enabled).
* When you hit a build error due to a missing type or function, enable the
  corresponding flag.
