module Test
  ( -- * Running tests
    defaultMain
  , testGroup
    -- * Unit tests
  , testCase
  , shouldBe
  , shouldSatisfy
  , shouldReturn
    -- * Property tests
  , testProperty
  , module Hedgehog
  ) where

import Hedgehog
import Test.Hspec.Expectations
import Test.Tasty
import Test.Tasty.Hedgehog
import Test.Tasty.HUnit
