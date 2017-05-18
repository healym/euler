import Data.List
import System.IO

sqsum n = 
  let sum_of_squares = sum [ x^2 | x <- [1..n] ]
      square_of_sum = ( sum [1..n] )^2
  in abs $ um_of_squares - square_of_sum

main = do
  putStrLn $ show $ sqsum 100
