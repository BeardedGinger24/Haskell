--Lab 05 Mher Oganesyan

--search alg. that searches through a list for Int n and returns the value in the list after n. If no value, 
--or the list is empty, return -1.  Eg, findNext 5 [1,2,3,4,5,6] should return 6, while findNext 5 [0,10,20,30] 
--returns -1

findNext :: Int -> [Int] -> Int
findNext a [] = -1
findNext a [b] = -1
findNext a (b:c)
         | a == b = head c
         | otherwise = findNext a c


--Implement a search alg that searches through a list for Int n and returns the value in the list before n. If 
--there is no value, or the list is empty, return -1.  Eg, findPrev 5 [1,2,3,4,5,6] shoud return 4...


findPrev :: Int -> [Int] -> Int
findPrev a [] = -1
findPrev a [b] = -1
findPrev a (b:c:d)
         | a == c = b
         | otherwise = findPrev a (c:d)


digitSum :: Int -> Int
digitSum 0 = 0
digitSum x = (mod x 10) + (digitSum (div x 10))

drop' :: (Ord a) => [a] -> a
drop' [] = error "list empty"
drop' [x] = x
drop' (x:xs) = maximum2 (x:xs)

maximum2 :: (Ord a) => [a] -> a
maximum2 [] = error "list empty"
maximum2 [x] = x
maximum2 (x:xs) = max x (maximum2 xs)


