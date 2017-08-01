import Data.List
import System.IO


factors n = [ x | x <- [1..n], n `mod` x == 0 ]

primeFacs n = let cofactor x = n `div` x
  in [ cofactor x | x <- factors n, factors (cofactor x) == [1,cofactor x] ]

main = do
  putStrLn $ show $ head $ primeFacs 600851475143
