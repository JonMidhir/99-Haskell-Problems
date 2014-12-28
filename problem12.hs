-- Decode a run-length encoded list.
--   decodeModified 
--    [Multiple 4 'a',Single 'b',Multiple 2 'c',
--     Multiple 2 'a',Single 'd',Multiple 4 'e']
--    > "aaaabccaadeeee"
data ListItem a = Multiple Int a | Single a deriving (Show)

unpack :: ListItem a -> [a]
unpack (Multiple n a) = foldl (\acc x -> a:acc) [] [1..n]
unpack (Single a) = [a]

decodeModified :: [ListItem a] -> [a]
decodeModified [] = []
decodeModified (x:xs) = unpack x ++ decodeModified xs