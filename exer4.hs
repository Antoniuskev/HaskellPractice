--   		== CMPT 383 Comparative Programming Languages ==

-- Excercise 4 Due : Friday October 5th 2018
-- Kevin Antonius / 301267227

-- Previous Function
hailstone :: Int -> Int
hailstone n
 | mod n 2 == 0 = div n 2
 | otherwise    = (3*n) + 1





-- ========= Exer4 Function ============

hailSeq :: Int -> [Int]
hailSeq 1 = [1]
hailSeq n = n : hailSeq(hailstone n) 



