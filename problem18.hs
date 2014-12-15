-- Extract a slice from a list.
-- slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
--   > "cdefg"
slice :: [a] -> Int -> Int -> [a]
slice xs n y = take (y - n + 1) $ drop (n-1) xs