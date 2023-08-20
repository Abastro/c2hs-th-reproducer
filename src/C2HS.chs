module C2HS (
  foo,
)
where

import Foreign
import Foreign.C.Types
import Foreign.C.String

foo :: Int
foo = 0

foreign import ccall unsafe "wrapper" make :: IO Int -> IO (FunPtr (IO Int))
