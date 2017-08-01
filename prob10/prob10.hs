import Data.List
import System.IO

factors :: Int -> [Int]
factors n = [x | x <- [2..n], n `mod` x == 0]

primes_below :: Int -> [Int]
primes_below n = [x | x <- [2..n],  (head (factors x)) == x]

main = do
putStrLn $ show $ sum $ primes_below 2000000
