{-# LANGUAGE OverloadedStrings #-}
import Network.Wai
import Network.Wai.Handler.Warp
import Blaze.ByteString.Builder (fromByteString)
import Network.HTTP.Types (status200)

main = run 3000 $ const $ return $ ResponseFile
    status200
    [("Content-Type", "text/plain"), ("Content-Length", "23")]
    "static-file.txt"
    Nothing
