module QSem
  ( -- * QSem
    QSem
  , newQSem
  , waitQSem
  , signalQSem
    -- * QSemN
  , QSemN
  , newQSemN
  , waitQSemN
  , signalQSemN
  ) where

import Control.Concurrent.QSem
import Control.Concurrent.QSemN
