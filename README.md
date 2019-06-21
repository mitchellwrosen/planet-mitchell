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

### Recommended packages

Packages perhaps worth looking at that didn't make it into my planet:

#### Abstract algebra

- `comonad`

  Comonads.

- `free`

  Free monads, applicatives, alternatives, etc.

- `mmorph`

  Monad morphisms.

- `pointed`

- `semilattices`

#### Algorithms

- `Diff`

  Find the difference between two lists

#### CLI utilities

- `ansi-terminal`

  Terminal color codes.

- `concurrent-output`

  Sticky, STM-based console regions.

- **`optparse-applicative`**

  Command-line option parsing.

- `say`

  Thread-safe `putStrLn`.

- `text-ansi`

  `Text` styling combinators.

#### Configuration

- `dhall`

#### Bitwise

- `bits`

  Bits extras and bitwise serialization.

#### Compatibility

- `base-orphans`

  Orphan instances for old `base`s.

#### Data structures

- `array`

  Arrays.

- `compact`

  Compact regions: no pointer inside a compact region points outside of it.

- `dlist`

  Difference lists.

- `fgl`

  Inductive graph library.

- **`foldl`**

  Left folds and scans.

- `heaps`

  Heap, supporting `O(1)` insert and `O(log n)` find min. Can be used to
  implement a priority queue.

- `ilist`

  Functions for working with linked list indexes, like `imap`.

- `insert-ordered-containers`

  `HashMap`/`HashSet` that maintain insertion order.

- `multiset`

  Multisets, aka bags.

- `psqueues`

  Priority search queues.

- `split`

  List splitting functions.

- `strict-tuple`

  Strict tuples.

- `vault`

- `vector-builder`

  Vector builder monoid.

##### Concurrent data structures

- `abstract-deque`

- **`atomic-primops`**

  CAS operations on `IORef`s and arrays. Includes a concurrent counter type as
  well.

- `stm-chans`

  STM channel and queue that can be closed.

- **`stm-containers`**

  STM containers.

- `unagi-chan`

  Fast concurrent channels.

#### Email

- `email-validate`

  Validate email addresses.

#### Effects / monads

- `list-transformer`

  `ListT` done right.

- `logict`

  A search monad for backtracking and fair interleaving.

- `managed`

  A simple wrapper for callback-based `IO` functions.

- `monad-ste`

  `STE s e a`, a faster alternative to `ExceptT e (ST s) a`.

- `writer-cps-mtl`

  A non-leaky alternative to `transformers`' `Control.Monad.Trans.Writer`.

#### FRP

- `reactive-banana`

  Clean FRP library.

#### JSON

- **`aeson`**

  De facto standard JSON library.

- `aeson-pretty`

  Pretty-print JSON.

- `aeson-qq`

  JSON quasi-quoter.

- `generic-aeson`

  Generic `ToJSON/FromJSON` generation that may be superior to `aeson`'s.

- `lens-aeson`

  JSON lenses.

#### Miscellaneous

- `constraints`

  Type class constraint manipulation.

- `network-uri`

  URI type.

- `nf`

  Helper newtype that `deepseq`s when `seq`'d, useful for ensuring that a data
  structure is fully evaluated before placing on a worker queue, for example.

- `unique`

  Generate uniques symbol in `IO`.

- `uuid`

#### Numeric

- `approximate`

  Approximate numbers.

- `erf`

  The error function.

- `exact-pi`

  Exact representation of `q×π^z`. Can express all rational numbers, plus `π`.

- `fast-digits`

  Convert a positive integer to/from its digits in any base.

- `half`

  Half-precision floating point.

- `integer-logarithms`

  Integer logarithms.

- `scientific`

  Scientific notation numbers.

#### Parsing

- `Earley`

- `lens-regex`

  Lens + regex.

- **`megaparsec`**

  Non-incremental recursive-descent parser for both binary and textual data.

- `parser-combinators`

  `Applicative`/`Monad`-general functions commonly used in recursive-descent
  parsers.

- `regex-applicative`

  Regex library.

#### Pretty printing

- `prettyprinter`

- `prettyprinter-ansi-terminal`

#### Randomness

- `mwc-random`

- `random-bytestring`

#### Serialization

- `cborg`

  Concise Binary Object Representation (CBOR)

- `cborg-json`

  CBOR <-> JSON

- `double-conversion`

  Convert `Double`s to `ByteString`/`Text`.

- `serialise`

#### Strings

- `base16-bytestring`

  Hexadecimal `ByteString` encoding.

- `bytestring-lexing`

  Read/write numeric literals as `ByteString`s, like `"-5.5"`.

- `case-insensitive`

  Newtype for case-insensitive string handling.

- `neat-interpolation`

  Quasi-quoter for text interpolation.

- `stringsearch`

  `ByteString` search.

- `text-builder`

  Strict `Text` builder monoid.

- `text-short`

  Memory-efficient UTF-8 text, does not support zero-copy slicing.

- `text-metrics`

  Text similarity combinators.

- `utf8-string`

  UTF-8 `ByteString`s.

#### System

- `network`

- `network-info`

  Grab system network interfaces.

- `typed-process`

  Process forking.

- `unix`

  Process forking, signals, etc.
