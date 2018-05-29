--lab 04 Mher Oganesyan

--Guards
generation :: Int -> String
generation year
 | year > 1995 = "You are from Generation Z."
 | year > 1980 = "You are a Millennial."
 | year > 1965 = "You are from Generation X."
 | year > 1945 = "You are a baby boomer."
 | year > 1933 = "You are from the Silent Generation."
 | otherwise = "You are from the Greatest Generation."


 --Where
generation2 :: Int -> String
generation2 age
 | year > 1995 = "You are from Generation Z."
 | year > 1980 = "You are a Millennial."
 | year > 1965 = "You are from Generation X."
 | year > 1945 = "You are a baby boomer."
 | year > 1933 = "You are from the Silent Generation."
 | otherwise = "You are from the Greatest Generation."
  where year = 2017 - age


hypo :: (RealFloat a) => [(a, a)] -> [a]  
hypo xs = [hypothenuse w h | (w, h) <- xs]  
    where hypothenuse s1 s2 = sqrt(s1^2 + s2^2)


--Let
pie :: (RealFloat a) => a -> [a] -> [a]
pie (w) (x) = [ y * z | (y) <- x, let z = (pi * w)]


--Case
multiply :: [Int] -> Int
multiply xs = case xs of [] -> 0
                         (x:[]) -> x
                         (x:y:[]) -> x * y
                         (x:y:z:_) -> x * y * z

