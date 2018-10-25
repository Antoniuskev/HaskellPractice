--CMPT383 MIDTERM REVIEW by GB
-- Re doing Exercise 1-6 

--Declare the type of each function 
--understand all the helper function 



-- //////// EXER1.HS ////////
-- First Haskell Code
-- GIVEN in the Question, 
-- return a determinan to a quadratic formula
det a b c = b^2 - 4*a*c
quadsol1 a b c = (-b - sqrt (det a b c))/2*a
quadsol2 a b c = (-b + sqrt (det a b c))/2*a


--MUST USE: indexing operator 
--Return  : the third element of a 
third_a :: [a] -> a
third_a x = x!!2

--MUST USE: pattern matching
third_a' :: [a] -> a
third_a' (_:_:x:xs) = x   


--Hailstone function 
-- `div` uses because "/" operators always return a float
-- if n even n /2, if odd (3*n)+1
hailstone :: Int -> Int
hailstone n 
 | mod n 2 == 0 = div n 2 
 | otherwise  = (3*n) + 1

-- //////// EXER2.HS ////////




--factorial pake foldl
factorial' n = foldl (*) 1 [1..n]

--4! = 1*2*3*4
-- given n 
factorial :: Int -> Int
factorial 1 = 1
factorial n = n * (factorial (n-1))




 


