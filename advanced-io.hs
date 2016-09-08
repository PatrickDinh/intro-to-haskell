import Data.Bits (xor)
import qualified Data.ByteString.Lazy as BS
import qualified Data.ByteString.Lazy.Char8 as C

main = do
    bs1 <- BS.readFile "dog-original.jpg"
    bs2 <- BS.readFile "dog.jpg"
    let diff = filter (\x -> x /= 0) (BS.zipWith xor bs1 bs2)
        result = BS.pack diff
    C.putStrLn (result)