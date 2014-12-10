--Pack consecutive duplicates of list elements into sublists. If a list
--contains repeated elements they should be placed in separate sublists.
--   pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 
--             'a', 'd', 'e', 'e', 'e', 'e']
--   > ["aaaa","b","cc","aa","d","eeee"]
pack :: Eq a => [a] -> [[a]]
pack ([]) = []
pack (x:[]) = [x]:[]
pack (x:xs) 
    | x == next = (x:y):ys
    | otherwise = [x]:all
    where all@(y:ys) = pack xs
          next = head y