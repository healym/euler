import Data.List
import System.IO

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

main = do
  putStrLn $ show $ sum $ filter (even) $ takeWhile ( < 4000000 ) fibs
