module Serialise
  ( -- * Encoding
    serialise
  , serialiseIncremental
    -- * Decoding
  , deserialiseOrFail
  , deserialiseIncremental
  , DeserialiseFailure(..)
  , ByteOffset
  , IDecode(..)
    -- * Serialise class
  , Serialise(..)
  ) where

import Codec.CBOR.Read (ByteOffset)
import Codec.Serialise (DeserialiseFailure(DeserialiseFailure),
                        IDecode(Done, Fail, Partial), Serialise(decode, encode),
                        deserialiseIncremental, deserialiseOrFail, serialise,
                        serialiseIncremental)
