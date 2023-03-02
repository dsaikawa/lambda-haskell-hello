{-# LANGUAGE DeriveGeneric #-}

module Lib
  ( handler
  ) where

import           AWS.Lambda.Context             ( LambdaContext )
import           AWS.Lambda.Runtime
import           Data.Aeson                     ( FromJSON )
import           GHC.Generics                   ( Generic )

data Request = Request
  { input :: String
  , hoge  :: String
  }
  deriving Generic
instance FromJSON Request

someFunc :: IO ()
someFunc = putStrLn "someFunc"


handler :: String -> String
handler hoge = "hello, " ++ hoge ++ " !"
