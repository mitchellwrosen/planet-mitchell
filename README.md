### Summary

`planet-mitchell` is my very own Haskell package planet.

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

- Odd, uncommon, and deprecated types and functions (like `WrappedApplicative`)
  are not re-exported.

- Partial functions are discouraged and mostly live in `.Partial` modules. (This
  is a work-in-progress).

- Unsafe functions are discouraged and mostly live in `.Unsafe` modules. (This
  is a work-in-progress).

- `String` is heavily discouraged, and many `String` IO functions are not
  re-exported; `Text` and/or `ByteString` versions are re-exported instead.

- Generalizations like `MonadIO` / `MonadUnliftIO` are used where possible.

### Stability

Alpha quality, massive churn and breaking changes should be expected. Don't use
this package.
