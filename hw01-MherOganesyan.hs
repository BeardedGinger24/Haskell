--Homework 01 Mher Oganesyan

-- Num 1
mAddition :: Float -> Float
mAddition 1 = 1
mAddition i = y + mAddition (i-1)
          where y = (1/i)

-- Num 2
mAddition' :: Float -> Float
mAddition' 1 = 1/2
mAddition' x = y + mAddition' (x-1)
          where y = (1/(x+1))

-- Num 3
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "list empty"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

deleteMaximum::[Int]->[Int]
deleteMaximum [] = []
deleteMaximum (x:xs)
  | x == maximum' (x:xs) = (xs)
  | otherwise =  x : deleteMaximum (xs)

-- Num 4
sortWithMax::[Int]->[Int]
sortWithMax [] = []
sortWithMax (x:xs) = sortWithMax(deleteMaximum (x:xs)) ++ [maximum' (x:xs)]
