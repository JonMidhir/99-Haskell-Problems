-- Find the number of elements of a list.
--   > myLength [123, 456, 789]
--   3

myLength :: [a] -> Int
myLength [] = 0
myLength (x:[]) = 1
myLength (_:xs) = (1+myLength xs)