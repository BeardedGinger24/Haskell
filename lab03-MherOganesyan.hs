

--Create 3 functions w/ type decl.
addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)

times :: Int -> Int -> Int
times x y = x * y

isOdd :: Int -> Bool
isOdd n
 | mod n 2 == 0 = False
 | otherwise = True


--Create func that takes typeclass of Num and returns typeclass Num that adds the two together
add :: (Num a) => a -> a -> a
add x y = x + y

addStringtoFloat :: String -> Float
addStringtoFloat x = (read x :: Float) + 3.4


--Create function that takes Ints, and if the number is 1 2 or 3 output ...
speak :: Int -> String
speak 1 = "Once"
speak 2 = "Twice"
speak 3 = "Thrice"
speak x = "Dont know how to say that in English."


--return quadruples
first :: (a, b, c ,d) -> a
first (w, _, _, _) = w

second :: (a, b, c ,d) -> b
second (_, x, _, _) = x

third :: (a, b, c ,d) -> c
third (_, _, y, _) = y

fourth :: (a, b, c ,d) -> d
fourth (_, _, _, z) = z


--exponent
power :: Int -> Int -> Int
power x 0 = 1
power x 1 = x
power x y = x * (power x (y-1))


--use list pattern matching, create func that multiplies first 3 elements
multiply :: [Int] -> Int
multiply [] = 0
multiply (x:[]) = x
multiply (x:y:[]) = x * y
multiply (x:y:z:_) = x * y * z