-- Modify the result of problem 10 in such a way that if an element has no 
-- duplicates it is simply copied into the result list. Only elements with 
-- duplicates are transferred as (N E) lists.
--   encodeModified "aaaabccaadeeee"
--   > [Multiple 4 'a',Single 'b',Multiple 2 'c',
--      Multiple 2 'a',Single 'd',Multiple 4 'e']

data Element a = Multiple Int a | Single a deriving (Show)

pack :: Eq a => [a] -> [[a]]
pack ([]) = []
pack (x:[]) = [x]:[]
pack (x:xs) 
    | x == next = (x:y):ys
    | otherwise = [x]:all
    where all@(y:ys) = pack xs
          next = head y

encodeModified :: Eq a => [a] -> [Element a]
encodeModified [] = []
encodeModified x = [if (length y) > 1 then Multiple (length y) (head y) else Single (head y) | y <- (pack x)]