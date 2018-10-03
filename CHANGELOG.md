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
  - Add `List.foldl1May'` function
  - Add `List.foldr1May` function
  - Add `List.headMay` function
  - Add `List.initMay` function
  - Add `List.lastMay` function
  - Add `List.maximumByMay` function
  - Add `List.maximumMay` function
  - Add `List.minimumByMay` function
  - Add `List.minimumMay` function
  - Add `List.tailMay` function
  - Add `List.Partial.elemIndexJust` function
  - Add `List.Partial.findIndexJust` function
  - Add `List.Partial.findJust` function
  - Add `List.Partial.lookupJust` function

### Changed
- Swap `Unique` implementation from `base` to `unique`
- Shorten `Numeric.*` to `Num.*`

### Removed
- Remove `envparse` dependency and `Parser.Env` module
- Remove `Distributive.fmapCollect`

## [0.0.0] - 2018-09-20

### Added
- Initial release
