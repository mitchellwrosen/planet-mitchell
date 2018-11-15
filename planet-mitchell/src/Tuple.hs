module Tuple
  ( fst
  , snd
  , swap
  , dupe
    -- ** Strict tuples
  , T1(..)
  , T2(..)
  , T4(..)
  , T5(..)
  , T6(..)
  , T7(..)
  , T8(..)
  , T9(..)
  , T10(..)
  , T11(..)
  , T12(..)
  , T13(..)
  , T14(..)
  , T15(..)
  , T16(..)
  , T17(..)
  , T18(..)
  , T19(..)
    -- ** Optics
  , Field1(..)
  , _1'
  , Field2(..)
  , _2'
  , Field3(..)
  , _3'
  , Field4(..)
  , _4'
  , Field5(..)
  , _5'
  , Field6(..)
  , _6'
  , Field7(..)
  , _7'
  , Field8(..)
  , _8'
  , Field9(..)
  , _9'
  , Field10(..)
  , _10'
  , Field11(..)
  , _11'
  , Field12(..)
  , _12'
  , Field13(..)
  , _13'
  , Field14(..)
  , _14'
  , Field15(..)
  , _15'
  , Field16(..)
  , _16'
  , Field17(..)
  , _17'
  , Field18(..)
  , _18'
  , Field19(..)
  , _19'
  ) where

import Control.Lens.Tuple (Field1(..), Field10(..), Field11(..), Field12(..),
                           Field13(..), Field14(..), Field15(..), Field16(..),
                           Field17(..), Field18(..), Field19(..), Field2(..),
                           Field3(..), Field4(..), Field5(..), Field6(..),
                           Field7(..), Field8(..), Field9(..), _1', _10', _11',
                           _12', _13', _14', _15', _16', _17', _18', _19', _2',
                           _3', _4', _5', _6', _7', _8', _9')
import Data.Tuple         (fst, snd, swap)
import Data.Tuple.Extra   (dupe)
import Data.Tuple.Strict  (T1(..), T10(..), T11(..), T12(..), T13(..), T14(..),
                           T15(..), T16(..), T17(..), T18(..), T19(..), T2(..),
                           T4(..), T5(..), T6(..), T7(..), T8(..), T9(..))
