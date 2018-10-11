-- == CMPT 383 Comparative Programming Languages ==

-- Excercise 5  Due : Friday October 12 2018
-- Kevin Antonius / 301267227

-- Previous Function
hailstone :: Int -> Int
hailstone n
 | mod n 2 == 0 = div n 2
 | otherwise    = (3*n) + 1

--curried function, take multiple argument by taking 
-- taking single multiple times.  
-- adding a pair of tuple 
add (a,b) = a + b


-- ========= Exer4 Function ===========

myIterate f x = x : myIterate f (f x)

myTakeWhile f (l:ls) 
 | f l  = l : myTakeWhile f ls
 | otherwise = []
 
-- return nth row of pascal's triangle recursively 
pascal 0 = [1]
pascal 1 = [1,1]
pascal n = 1 : inside (n-1) ++ [1]
 where inside m = map add(zip (pascal m) (tail (pascal m))) 

--Using lamda expression to make addpair first-calss functions 
addPair = (\(a,b) -> a + b) 

 
withoutZeros' a = filter (/=0) a
-- adding Pointfree defitition to a withoutZero' function 
withoutZeros = \a -> filter(/=0) a

fib 0 = 0
fib n 
 | n < 3     = 1
 | otherwise = fib (n-1) + fib (n-2) 

--Produce infinite finonacci sequence. 
fibs = map fib [0..]
