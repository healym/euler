import Data.List
import System.IO

factors n = [ x | x <- [1..n], n `mod` x == 0 ]

primes = [ x | x <- [1..], factors x == [1,x] ]

repeated  n = product $ [ x | x <- [1..n], x*x < n ]

largestMult n = product $ repeated n : takeWhile ( < n ) primes

main = do
  putStrLn $ show $ largestMult 20
