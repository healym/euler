import Data.List
import System.IO


primeFacs :: Integer -> [Integer]
primeFacs n =
    go n 2 []
    where
        go n current facs
            | current > n || n == 1 = facs
            | otherwise = case n `mod` current of
                            0 -> go (n `div` current) current (facs ++ [current])
                            _ ->  go n (current + 1) facs

main = do
  putStrLn $ show $ head $ reverse $ primeFacs 600851475143
