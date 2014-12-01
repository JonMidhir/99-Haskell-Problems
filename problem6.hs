-- Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
--   > isPalindrome [1,2,3]
--   False
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome ([]) = True
isPalindrome (x:[]) = True
isPalindrome xs = xs == (reverse xs)