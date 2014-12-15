-- Replicate the elements of a list a given number of times.
--   repli "abc" 3
--   > "aaabbbccc"
repli :: [a] -> Int -> [a]
repli xs n = foldr (\x acc -> (take n $ repeat x) ++ acc) [] xs