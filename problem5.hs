-- Reverse a list.
--   > myReverse [1,2,3,4]
--   [4,3,2,1]
myReverse :: [a] -> [a]
myReverse ([]) = []
myReverse (x:[]) = [x]
myReverse (x:xs) = myReverse xs ++ [x]