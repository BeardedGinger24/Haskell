-- lab 06 Mher Oganesyan

-- Num 1
add2Ints :: (Num a) => a -> a -> a
add2Ints x y = x + y

addTo10 = (add2Ints 10)

-- Num 2
isLowerCase :: Char -> Bool
isLowerCase = (`elem` ['a' .. 'z'])

-- Num 3
apply3 :: (a -> a) -> a -> a
apply3 f x = f ( f (f x))


-- Num 4
map' :: (Int -> Int) -> [Int] -> [Int]  
map' _ [] = []  
map' f [x] = f x : []
-- map' f (x:y) = f x:[]
map' f (x:y:xs) = f x :y : map' f (xs)



-- Num 5
-- test case: zipWith' addThree [1,2,3] [4,5,6] [7,8,9]
zipWith' :: (a -> b -> c -> d) -> [a] -> [b] -> [c] -> [d]
zipWith' _ [] _ _ = []  
zipWith' _ _ [] _ = []
zipWith' _ _ _ [] = []  
zipWith' f (x:xs) (y:ys) (z:zs) = f x y z : zipWith' f xs ys zs

addThree :: (Num a) => a -> a -> a -> a
addThree x y z = x + y + z

-- Num 6
returnTuple :: (Int -> Int) -> Int -> (Int,Int)
returnTuple f x = (x, f x)

-- Num 7
mapTuple :: (Int -> Int) -> [Int] -> [(Int,Int)]  
mapTuple _ [] = []  
mapTuple f (x:xs) = (returnTuple f x): mapTuple f (xs)  



