import Data.List
import System.IO

factors n = [x | x <- [1..n], n `mod` x == 0]

primes_below n = [x | x <- [1..n], factors x == [1,x]]

main = do
putStrLn $ show $ sum $ primes_below 2000000
