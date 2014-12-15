-- Determine the greatest common divisor of two positive integer numbers. Use Euclid's algorithm.
--   [myGCD 36 63, myGCD (-3) (-6), myGCD (-3) 6]
--   > [9,3,3]
myGCD :: Int -> Int -> Int
myGCD x y = if r == 0 then minXY else myGCD maxXY r
    where r = maxXY `rem` minXY
          maxXY = max x y
          minXY = min x y