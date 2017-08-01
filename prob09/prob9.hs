import Data.List
import System.IO

triples = [ (a,b,c) | a,b,c <- [1..1000], a^2 + b^2 = c^2]
