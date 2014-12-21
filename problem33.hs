-- Determine whether two positive integer numbers are coprime. Two numbers are
-- coprime if their greatest common divisor equals 1.
--   coprime 35 64
--   > True
myGCD :: Int -> Int -> Int
myGCD x y = if r == 0 then minXY else myGCD maxXY r
    where r = maxXY `rem` minXY
          maxXY = max x y
          minXY = min x y

coprime :: Int -> Int -> Bool
coprime x y = 1 == myGCD x y