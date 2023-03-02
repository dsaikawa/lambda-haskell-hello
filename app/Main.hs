module Main
  ( main
  ) where

import           Lib                            ( handler )

import           AWS.Lambda.Runtime             ( pureRuntime )

main :: IO ()
main = pureRuntime handler
