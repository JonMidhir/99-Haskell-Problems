-- Determine whether a given integer number is prime.
--   > isPrime 7
--   True
isPrime :: Int -> Bool
isPrime n = all (\x -> n `mod` x /= 0) [2..floor . sqrt $ fromIntegral n]