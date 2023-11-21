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

-- Q3: Find the K'th element of a list
elementAt :: [a] -> Int -> a
elementAt [] _ = error "Empty List Passed"
elementAt (x:xs) n
 | n>length (x:xs) = error "Not enough elements in the list"
 | n==0 = error "Provide a valid position value"
 | n==1 = x
 | otherwise = elementAt xs (n-1)

-- Q4: Find the number of elements in a list
myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs
