-- Run-length encoding of a list (direct solution).
-- Implement the so-called run-length encoding data compression method 
-- directly. I.e. don't explicitly create the sublists containing the 
-- duplicates, as in problem 9, but only count them.
--   encodeDirect "aaaabccaadeeee"
--   > [Multiple 4 'a',Single 'b',Multiple 2 'c',
--      Multiple 2 'a',Single 'd',Multiple 4 'e']
import Data.List

data ListItem a = Multiple Int a | Single a deriving (Show)

encodeDirect :: Eq a => [a] -> [ListItem a]
encodeDirect [] = []
encodeDirect (xs) = [if length x > 1 then Multiple (length x) (head x) else Single (head x) | x <- grouped]
    where grouped = group xs