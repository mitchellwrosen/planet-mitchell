# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to the [Haskell Package Versioning Policy](https://pvp.haskell.org/).

## Unreleased

### Added
- Add `ByteString.random` from `random-bytestring`
- Export `(^)` from `Numeric.Num`
- Export `(^^)` from `Numeric.Fractional`
- Add `Map.Hash.Linked`
- Export `any` from `Foldable` and `Mitchell.Prelude`
- Add `email-validate` dependency and `Email`/`Email.Unsafe` modules

### Changed
- Swap `Unique` implementation from `base` to `unique`

### Removed
- Remove `envparse` dependency and `Parser.Env` module
- Remove `Distributive.fmapCollect`

## [0.0.0] - 2018-09-20

### Added
- Initial release
