import Data.List
import System.IO

main = putStrLn $ show $ sum [ x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]
