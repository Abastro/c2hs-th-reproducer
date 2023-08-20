{-# LANGUAGE TemplateHaskellQuotes #-}

module THSplice where

import C2HS (foo)
import Language.Haskell.TH qualified as TH

bar :: TH.Q [TH.Dec]
bar =
  [d|
    myFoo :: Int
    myFoo = foo
    |]
