-- Insert an element at a given position into a list.
--   insertAt 'X' "abcd" 2
--   > "aXbcd"
insertAt :: a -> [a] -> Int -> [a]
insertAt c xs 1 = c:xs
insertAt c (x:xs) n = x : insertAt c xs (n-1)