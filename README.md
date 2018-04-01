A modern Haskell standard library.

This package is meant to be a (somewhat) beginner-friendly, comprehensive standard library and entrypoint into the Haskell
ecosystem.

It contains no new code, only re-exports from `base` and various well-known packages.

Some subjective decisions have been made along the way:

- I've stripped `Control.`, `Data.`, `Foreign.`, etc. prefixes from modules. The idea here is that, if a name such as `Applicative` is sufficiently unambiguous in
the Haskell world, it deserves as short a module name as possible.

  See the [elm standard library](http://package.elm-lang.org/packages/elm-lang/core/latest) for inspiration. Simple and 
  concise.
  
- The module hierarchy is not perfectly faithful to the underlying packages, and I've invented a few new modules along the way,
such as `Concurrency`, `Parallelism`, `Eval`, and `Debug`.

  I imagine this will be confusing to experienced Haskellers, but hopefully helpful for beginners.

And some objectively good decisions, too:

- Many fewer partial functions :)
