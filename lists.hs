-- Q1: Find the last element of a list
myLast :: [a] -> a
myLast [] = error "Empty List Passed!"
myLast (x:xs)
 | null xs = x
 | otherwise = myLast xs

-- Q2: Find the last-but-one (or second-last) element of a list
myButLast :: [a] -> a
myButLast [] = error "Empty List Passed!"
myButLast [x] = error "Only One Element in the List Passed!"
myButLast (x:xs)
 | length xs == 1 = x
 | otherwise = myButLast xs
