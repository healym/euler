import Data.List
import System.IO

factors n = [ x | x <- [1..n], n `mod` x == 0 ]

primes = [ x | x <- [1..], factors x == [1,x] ]

main = do
   putStrLn $ show $ product $ 24 : takeWhile ( < 20 ) primes
  -- 9 and 16 are the largest numbers below 20 with repeated prime factors
