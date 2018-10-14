# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to the [Haskell Package Versioning Policy](https://pvp.haskell.org/).

## Unreleased

### Added
- Add `Diff` dependency
- Add `Safe` dependency
- Add `compactable` dependency
- Add `email-validate` dependency
- Add `exact-pi` dependency
- Add `fast-digits` dependency
- Add `insert-ordered-containers` dependency
- Add `random-bytestring` dependency
- Add `say` dependency
- Add `stringsearch` dependency
- Add `text-metrics` dependency
- Add `Posix.Signal` module
- Export `Concurrency.TBQueue.lengthTBQueue` if `stm >= 2.5.0`
- Export `Concurrency.TVar.stateTVar` if `stm >= 2.5.0`
- Export `Foldable.any`
- Export `(Numeric.Fractional.^^)`
- Export `(Numeric.Num.^)`
- Export `(Optic.Fold.Unsafe.^?!)`
- Export `(Bits..|.~)`, `(Bits..&.~)`, `Bits.bitAt`, `Bits.bits`
- Export `Mitchell.Prelude.Contravariant`
- Export `Mitchell.Prelude.any`
- Export `Mitchell.Prelude.contramap`
- Export `File.Binary.hPutSerialise`

### Changed
- Swap `Unique` implementation from `base` to `unique`
- Swap `ByteString.split` from `bytestring` for `ByteString.split` from `stringsearch`
- Swap old text printing functions for `say` versions in `Mitchell.Prelude`
- Shorten `Numeric.*` to `Num.*`
- Relax `base` upper bound to `^>= 4.12.0`
- Relax `stm` upper bound to `^>= 2.5.0`
- Relax `contravariant` upper bound to `^>= 1.5`
- Relax `lens` upper bound to `^>= 4.17`
- Relax `mwc-random` upper bound to `^>= 0.14.0`
- Relax `network` upper bound to `^>= 2.8.0`
- Move `Bifoldable(.Partial)` modules info `Foldable(.Partial)` modules
- Move `Bifunctor` module info `Functor` module
- Move `Bitraversable` module info `Traversable` module

### Removed
- Remove `envparse` dependency
- Remove `Distributive.fmapCollect` function
- Remove `ByteString.append` function
- Remove `ByteString.cons` function
- Remove `ByteString.empty` function
- Remove `bitDefault`, `popCountDefault`, `testBitDefault` from `Bits`
- Remove `hPrint`, `print` functions from `File.Text`
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
