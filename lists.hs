-- Q1: Find the last element of a list
myLast :: [a] -> a
myLast [] = error "Empty List Passed!"
myLast (x:xs)
 | null xs = x
 | otherwise = myLast xs
