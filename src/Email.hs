module Email
  ( -- * Email address
    EmailAddress
  , validate
  , toByteString
  ) where

import Text.Email.Parser (EmailAddress, toByteString)
import Text.Email.Validate (validate)
