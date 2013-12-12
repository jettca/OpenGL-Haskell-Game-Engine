{-# LANGUAGE ForeignFunctionInterface #-}
module Render (addOne) where

import Foreign.C

foreign import ccall "add_one" addOne :: CInt -> CInt
