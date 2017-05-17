import Data.List
import System.IO

mults = [ x * y | x <- [100..999], y <- [100..999] ]

palindromes = [ x | x <- mults, show x == (reverse . show) x ]

main = do
  putStrLn $ show $ head $ reverse $ sort $ palindromes
