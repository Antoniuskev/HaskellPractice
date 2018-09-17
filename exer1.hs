det a b c = b^2 - 4*a*c
quadsol1 a b c = (-b - sqrt (det a b c))/2*a
quadsol2 a b c = (-b + sqrt (det a b c))/2*a

third_a xs = xs !! 2

third_b (_:_:x:rest) = x

hailstone n
 | mod n 2 == 0	= div n 2
 | otherwise    = (3*n) + 1

