import Data.List
import System.IO

triples = [ (m^2-n^2,2*m*n,m^2 + n^2) | n <- [1..100], m <- [n..100] ]

magic_triple n = head $ [ (a,b,c) | (a,b,c) <- triples, a+b+c == n ]

main = do
putStrLn $ show $ map product $ magic_triple 1000
