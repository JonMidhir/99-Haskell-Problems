-- Find the last but one element of a list.
--   > myButLast [1,2,3,4]
--   3

myButLast :: [a] -> a
myButLast [] = error "Empty list."
myButLast (x:[]) = error "List too short."
myButLast (x:y:[]) = x
myButLast (x:xs) = myButLast xs