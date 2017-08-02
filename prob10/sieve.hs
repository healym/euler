import Data.List
import System.IO

sieve :: [Int] -> [Int]
sieve (x:xs) = [x] ++ (sieve [ n | n <- xs, n `mod` x /= 0])
sieve [] = []

main = do
putStrLn $ show $ sum $ [1] ++ sieve [2..2000000]
