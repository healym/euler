import Data.List
import System.IO


primes_below :: Int -> Int -> [Int] -> [Int]
primes_below acc num primes
    | acc == num = primes
    | filter(\x -> x `mod` acc /= 0) == [] = primes_below (acc + 1) num (primes ++ [acc])
    | otherwise = primes_below (acc + 1) num primes
