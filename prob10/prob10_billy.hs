import Data.List
import System.IO


primes_below :: Int -> Int -> [Int] -> [Int]
primes_below acc num primes
    | acc == num = primes
    | filter(\x -> (mod acc x == 0)) primes == [] = primes_below (acc + 1) num (primes ++ [acc])
    | otherwise = primes_below (acc + 1) num primes

main = do
putStrLn $ show $ sum $ primes_below 2 2000000 []
