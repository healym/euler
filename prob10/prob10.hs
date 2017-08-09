import Data.List
import System.IO

factors :: Int -> [Int]
factors n
    | n == 1 = []
    | otherwise = let x = head([ i | i <- 2: [3,5..n],n `mod` i==0]) in [x] ++ (factors $ n `div` x)

primes_below :: Int -> [Int]
primes_below n = [x | x <- [2..n],  (head (factors x)) == x]

main = do
putStrLn $ show $ foldl' (+) 1 $ primes_below 2000000
