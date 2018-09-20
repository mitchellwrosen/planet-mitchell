module Applicative
  ( -- * Applicative
    Applicative(..)
  , between
  , filterM
  , forever
  , liftA3
  , replicateM
  , replicateM_
  , unless
  , when
  , zipWithM
  , zipWithM_
    -- * Alternative
  , Alternative((<|>), empty, many)
  , endBy
  , endBy1
  , guard
  , manyTill
  , optional
  , sepBy
  , sepEndBy
  , sepBy1
  , sepEndBy1
  , skipMany
  , skipManyTill
  , skipSome
  , skipSomeTill
  , some1
  , someTill
    -- ** Newtypes
  , Alt(..)
    -- * Free applicative
  , Ap(..)
  , runAp
  , runAp_
  , liftAp
  , iterAp
  , hoistAp
  , retractAp
  ) where

import Control.Applicative                      (Alternative(empty, many, (<|>)),
                                                 Applicative(liftA2, pure, (*>), (<*), (<*>), (<*>)),
                                                 liftA3)
import Control.Applicative.Combinators          (between, endBy, manyTill,
                                                 sepBy, sepEndBy, skipMany,
                                                 skipManyTill, skipSome,
                                                 skipSomeTill)
import Control.Applicative.Combinators.NonEmpty (endBy1, sepBy1, sepEndBy1,
                                                 someTill)
import Control.Applicative.Free                 (Ap(Ap, Pure), hoistAp, iterAp,
                                                 liftAp, retractAp, runAp,
                                                 runAp_)
import Control.Monad                            (filterM, forever, guard,
                                                 replicateM, replicateM_,
                                                 unless, when, zipWithM,
                                                 zipWithM_)
import Data.Functor.Alt                         (optional)
import Data.List.NonEmpty                       (some1)
import Data.Monoid                              (Alt(Alt, getAlt))
