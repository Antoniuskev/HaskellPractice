-- CMPT 383 Comparative Programming Languages
-- Excercise 3 Due : Friday September 28 2018
-- Kevin Antonius / 301267227

import Data.Time.Calendar
import Data.Time.Calendar.OrdinalDate

-- Previous Function
hailstone :: Int -> Int
hailstone n
 | mod n 2 == 0 = div n 2
 | otherwise    = (3*n) + 1

divisors :: Int -> [Int]
divisors n = [i | i <- [2..(n `div` 2)], n `mod` i == 0]

getDay (y,m,d) = d

-- ========= Exer3 Function ============


--Merging 2 function that takes 2 sorted list.
merge :: (Ord a) => [a] -> [a] -> [a]
merge xs     []     = xs
merge []     ys     = ys
merge (x:xs) (y:ys)
 | x >= y    = y : (merge (x:xs) ys)
 | otherwise = x : (merge xs (y:ys))

--Tail Reccursion haillen Function ::

hailLen :: Num a => Int -> a
hailLen n = hailTail 0 n
 where
   hailTail a 1 = 1
   hailTail a n = hailTail (a+1) (hailstone n)

--Factorial
--recursively count factorial.
fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact (n-1)

--Factorial usnig foldl
fact' :: Integer -> Integer
fact' n = foldl (*) 1 [1..n]

--Haskell Library
--return num of days in given year
daysInYear :: Integer -> [Day]
daysInYear y = [jan1..dec31]
  where jan1 = fromGregorian y 01 01
        dec31 = fromGregorian y 12 31

isFriday :: Day -> Bool
isFriday day = (snd ans == 5)
   where ans = mondayStartWeek day

--return True if the Day is prime
isPrimeDay :: Day -> Bool
isPrimeDay day = divisors (getDay ans) == []
     where ans = toGregorian day

--return list of prime days
primeFriday :: Integer -> [Day]
primeFriday year = [i | i <- daysInYear year, 
                      (isFriday i && isPrimeDay i)]











