-- 2. 4pts: Write a Haskell program named leetcode. It asks for a phrase, and it converts all lowercase o's to 0,
-- all lowercase e's to 3, all lowercase a's to @, and all lowercase l's to 1, and prints the result to the screen.

main = do   
    putStrLn "Input a phrase:"
    line <- getLine  
    if null line  
        then return () 
        else do  
            putStrLn $ checking line  
            main  

checking :: String -> String
checking [] = []
checking (x:xs) 
          | x == 'o' = '0':checking xs
          | x == 'e' = '3':checking xs
          | x == 'a' = '@':checking xs
          | x == 'l' = '1':checking xs
          | otherwise = x:checking xs