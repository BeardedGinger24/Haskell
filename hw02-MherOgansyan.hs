import Data.List

-- Homework 02 Mher Oganesyan

-- Num 1
divBy5 :: Int -> Bool
divBy5 = (==0) . ( `mod` 5)

-- Num 2
checkaf :: String -> Bool
checkaf "" = True
checkaf [x] = (`elem` ['a'..'f']) x
checkaf (x:y:xs)
         | (`elem` ['a'..'f']) x = checkaf xs
         | otherwise = False

-- Num 3
zipToMap :: [Int] -> [Int] -> [Int]
zipToMap [] [_] = []
zipToMap [_] [] = []
zipToMap (a) (b) = map (\(a,b) -> a + b) (zip a b)

-- Num 4
mapStrings :: [String] -> [String]
mapStrings [] = error "empty List"
mapStrings (x) =  map (\x -> takeWhile (/=' ') x) x

-- Num 5 
checkStrings :: [[String]] -> [[String]]
checkStrings = foldr (\x acc -> (checking x) : acc) []  

checking :: [String] -> [String]
checking [] = []
checking (x:xs) 
          | x == "" = "0":checking xs
          | otherwise = x:checking xs

-- Num 6
listToTuples :: [a] -> [(a,a)]
listToTuples [] = []
listToTuples [x] = [] -- [(x,x)]
listToTuples (a:b:c) =  (a,b): listToTuples c

-- Num 7 
productOfTuples :: [Integer] -> [Integer]
productOfTuples [] = []
productOfTuples [x] = [x]
productOfTuples (x:y:xs) = (foldl (\acc (a,b) -> acc * (a*b)) 1 (listToTuples (x:y:[]))) : productOfTuples xs
-- productOfTuples xs = map (\(x,y) -> x*y) v
--                where v = listToTuples xs

-- Num 8
cumulativeSum :: [Int] -> [Int]
cumulativeSum (x:xs) = scanl (+) x xs

-- Num 9
applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f x = f $ f $ f x

-- Num 10 **
isLowerCase :: Char -> Bool
isLowerCase = (`elem`  ['a' .. 'z'] )

-- Num 11 
quicksort ::  [String] -> [String]
quicksort [] = []
quicksort (x:xs) = 
        let smaller = quicksort [a | a <- xs, length(takeWhile (/=' ') a) <= length(takeWhile (/=' ') x)]
            bigger  = quicksort [a | a <- xs, length(takeWhile (/=' ') a) > length(takeWhile (/=' ') x)]
        in smaller ++ [x] ++ bigger

-- Num 12
repeats :: [Char] -> [String]
repeats a = filter (\str ->str/= "" ) $ zipWith (\x alphabet -> filter (\char -> char==alphabet) x) (repeat a)  ['a'..'z']



