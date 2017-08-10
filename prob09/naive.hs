import Data.List
import System.IO

triples = [ (m^2-n^2,2*m*n,m^2 + n^2) | m <- [1..], n <- [1..] ]

magic_triple Int -> (Int,Int,Int)
magic_triple n = [ (a,b,c) | triples, a+b+c == n ]

main = do
putStrLn $ show $ magic_triple 1000
