myButLast :: [a] -> a
myButLast [] = error "Empty list."
myButLast (x:[]) = error "List too short."
myButLast (x:y:[]) = x
myButLast (x:xs) = myButLast xs