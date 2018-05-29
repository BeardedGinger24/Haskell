import System.IO     
import Data.Char  

-- 3. 4pts: Write a Haskell program that inputs a file (the file path is hardcoded in your program for now)
-- and does the same thing with the text as the previous problem, but instead of printing to the screen,
-- it prints it to a file called leet.txt, in the same directory as the original file. 
    
main = do     
    contents <- readFile "test.txt"     
    writeFile "leet.txt" (checking contents) 

checking :: String -> String
checking [] = []
checking (x:xs) 
          | x == 'o' = '0':checking xs
          | x == 'e' = '3':checking xs
          | x == 'a' = '@':checking xs
          | x == 'l' = '1':checking xs
          | otherwise = x:checking xs