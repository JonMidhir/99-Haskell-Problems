-- Drop every N'th element from a list.
--   dropEvery "abcdefghik" 3
--   > "abdeghk"
dropEvery :: [a] -> Int -> [a]
dropEvery [] n = []
dropEvery (x:[]) n = [x]
dropEvery x n = (init $ take n x) ++ dropEvery (drop n x) n