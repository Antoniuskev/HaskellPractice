-- == CMPT 383 Comparative Programming Languages ==

-- Excercise 5  Due : Friday October 12 2018
-- Kevin Antonius / 301267227

-- Previous Function
hailstone :: Int -> Int
hailstone n
 | mod n 2 == 0 = div n 2
 | otherwise    = (3*n) + 1
 
add (a,b) = a + b
-- ========= Exer4 Function ============

myIterate f x = x : myIterate f (f x)

myTakeWhile f (l:ls) 
 | f l  = l : myTakeWhile f ls
 | otherwise = []  
 
pascal 0 = [1]
pascal 1 = [1,1]
pascal n = 1 : something n ++ [1]
 where something n 
 	 

		
 

-- | n == 0 = (pascal 0) 
-- | n == 2 = map add(zip (pascal 1) (pascal 0))
-- | n > 1  = map add(zip (something (n - 1)) (something (n -2)))
