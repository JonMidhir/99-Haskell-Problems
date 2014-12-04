--Eliminate consecutive duplicates of list elements.
--
--If a list contains repeated elements they should be replaced with a single copy
--of the element. The order of the elements should not be changed.
--   > compress "aaaabccaadeeee"
--   "abcade"
compress :: (Eq a) => [a] -> [a]
compress ([]) = []
compress (x:[]) = [x]
compress (x:y:xs) = if x == y then compress (y:xs) else x:(compress (y:xs))