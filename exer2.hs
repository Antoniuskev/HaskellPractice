-- CMPT 383 Comparative Programming Languages
-- Excercise 2 Due : Friday September 21 2018
-- Kevin Antonius / 301267227

--Exer1 Function

hailstone n
 | mod n 2 == 0 = div n 2
 | otherwise    = (3*n) + 1
  
-- Exer2 function 
hailLen' n
 | n == 1 = 0
 | otherwise = 1 + hailLen' (hailstone n) 
 
hailLen 1       = 0 
hailLen n       = 1 + hailLen (hailstone n)

divisors :: Int -> [Int]
divisors n = [i | i <- [2..(n `div` 2)], n `mod` i == 0]

primes :: Int -> [Int]
primes n = [i | i <- [2..n], divisors i == []]

join t [a] = a
join t (x:xs) = x ++ t ++ join t xs 

pythagorean :: Int -> [(Int, Int, Int)]
pythagorean n = [(a,b,c) | c <- [1..n],
                           b <- [1..n],
                           a <- [1..b],  
                           c^2 == a^2 + b^2 ] 


