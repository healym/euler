import Data.List
import System.IO

factors n = [ x | x <- [1..n], n `mod` x == 0 ]

primes = [ x | x <- [1..], factors x == [1,x] ]

main = do
putStrLn $ show $ head $ reverse $ take 1001 primes
