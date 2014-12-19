-- Rotate a list N places to the left.
--   rotate ['a','b','c','d','e','f','g','h'] 3
--   > "defghabc"
rotate :: [a] -> Int -> [a]
rotate (x:xs) 1 = xs ++ [x]
rotate (x:xs) n = rotate (xs ++ [x]) $ n-1