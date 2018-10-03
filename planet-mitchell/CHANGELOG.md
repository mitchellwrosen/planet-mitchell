# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to the [Haskell Package Versioning Policy](https://pvp.haskell.org/).

## Unreleased

### Added
- Add `random-bytestring` dependency
  - Add `ByteString.random` function
- Export `(^)` from `Numeric.Num`
- Export `(^^)` from `Numeric.Fractional`
- Add `insert-ordered-containers` dependency
  - Add `Map.Hash.Linked` module
- Export `any` from `Foldable` and `Mitchell.Prelude`
- Add `email-validate` dependency
  - Add `Email` module
  - Add `Email.Unsafe` module
- Add `exact-pi` dependency
  - Add `Numeric.Pi` module
- Add `compactable` dependency
  - Add `Compactable` module
  - Export `Compactable(..)` from `Mitchell.Prelude`
- Add `fast-digits` dependency
  - Add `Num.Integer.Partial` module
  - Add `Num.Natural.Partial` modules
- Add `Diff` dependency
  - Add `List.Diff(..)` type
  - Add `List.getDiff` function
  - Add `List.getDiffBy` function
  - Add `List.getGroupedDiff` function
  - Add `List.getGroupedDiffBy` function
- Add `Safe` dependency
  - Add `Enum.predMay` function
  - Add `Enum.succMay` function
  - Add `Enum.toEnumMay` function
  - Add `Foldable.foldr1May` function
  - Add `Foldable.maximumByMay` function
  - Add `Foldable.maximumMay` function
  - Add `Foldable.minimumByMay` function
  - Add `Foldable.minimumMay` function
  - Add `Foldable.Partial.findJust` function
  - Add `List.foldl1May'` function
  - Add `List.foldr1May` function
  - Add `List.maximumByMay` function
  - Add `List.maximumMay` function
  - Add `List.minimumByMay` function
  - Add `List.minimumMay` function
  - Add `List.Partial.elemIndexJust` function
  - Add `List.Partial.findIndexJust` function
  - Add `List.Partial.findJust` function
  - Add `List.Partial.lookupJust` function
- Add `stringsearch` package
  - Add `ByteString.breakAfter` function
  - Add `ByteString.breakOn` function
  - Add `ByteString.indices` function
  - Add `ByteString.nonOverlappingIndices` function
  - Add `ByteString.split` function
  - Add `ByteString.splitKeepEnd` function
  - Add `ByteString.splitKeepFront` function
  - Add `ByteString.Lazy.breakAfter` function
  - Add `ByteString.Lazy.breakFindAfter` function
  - Add `ByteString.Lazy.breakOn` function
  - Add `ByteString.Lazy.indices` function
  - Add `ByteString.Lazy.nonOverlappingIndices` function
  - Add `ByteString.Lazy.replace` function
  - Add `ByteString.Lazy.split` function
  - Add `ByteString.Lazy.splitKeepEnd` function
  - Add `ByteString.Lazy.splitKeepFront` function
- Export `(^?!)` from `Optic.Fold.Unsafe`
- Export `Concurrency.TBQueue.lengthTBQueue` if `stm >= 2.5.0`
- Export `Concurrency.TVar.stateTVar` if `stm >= 2.5.0`

### Changed
- Swap `Unique` implementation from `base` to `unique`
- Shorten `Numeric.*` to `Num.*`
- Relax `base` upper bound to `^>= 4.12.0`
- Swap `ByteString.split` from `bytestring` for `ByteString.split` from `stringsearch`
- Relax `stm` upper bound to `^>= 2.5.0`
- Relax `contravariant` upper bound to `^>= 1.5`
- Relax `lens` upper bound to `^>= 4.17`
- Relax `mwc-random` upper bound to `^>= 0.14.0`
- Relax `network` upper bound to `^>= 2.8.0`

### Removed
- Remove `envparse` dependency and `Parser.Env` module
- Remove `Distributive.fmapCollect`
- Remove `ByteString.append`
- Remove `ByteString.cons`
- Remove `ByteString.empty`
- Split off separate `mitchell-prelude-test` package
  - Remove `gauge` dependency
  - Remove `hedgehog` dependency
  - Remove `weigh` dependency
  - Remove `Bench` module
  - Remove `Test` module
  - Remove `Test.Gen` module
  - Remove `Test.Range` module
  - Remove `Weigh` module

## [0.0.0] - 2018-09-20

### Added
- Initial release
