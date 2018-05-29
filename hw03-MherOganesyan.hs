import System.Environment   
import System.Directory  
import System.IO  
import Data.List 
import Data.List.Split

-- hw 03 Mher Oganesyan

data Student = Student {firstName :: String,
 lastName :: String, 
 major :: String,
 age :: Int} deriving (Show, Read)

data TreeNode = EmptyTree | TreeNode Student (TreeNode) (TreeNode) deriving (Show, Read)

makeNode :: Student -> TreeNode 
makeNode x = TreeNode x EmptyTree EmptyTree

treeInsert :: Student -> TreeNode -> TreeNode
treeInsert x EmptyTree = makeNode x  
treeInsert x (TreeNode s left right)   
    | age x == age s = TreeNode x left right  
    | age x < age s  = TreeNode s (treeInsert x left) right  
    | age x > age s  = TreeNode s left (treeInsert x right) 


searchAge ::  String  -> TreeNode  -> Bool  
searchAge x EmptyTree = False  
searchAge x (TreeNode s left right)  
    | read x == age s = True  
    | read x < age s  = searchAge x left  
    | read x > age s  = searchAge x right   

searchName :: String -> TreeNode -> Bool  
searchName x EmptyTree = False  
searchName x (TreeNode s left right)  
    | x == lastName s = True  
    | x < lastName s  = searchName x left  
    | x > lastName s  = searchName x right   


sendTo :: [String] -> Student
sendTo (w:x:y:z:[]) = Student {firstName=w, lastName=x, major=y, age=read z :: Int}

main = do  
    (file:command:args:[]) <- getArgs  
    contents <- readFile file
    let x = lines contents
        y = foldr treeInsert EmptyTree (view x)
    print $ check command args y

check :: String -> String -> TreeNode -> Bool
check x y z 
 | x == "searchAge" = searchAge y z
 | otherwise = searchName y z

-- This is where a list of students is produced
view :: [String] -> [Student]
view x =  map stringToStudent x


stringToStudent :: String -> Student
stringToStudent s = sendTo $ a s
  where a x = splitOn "," x


{-
view :: String -> IO ()
view fileName = do  
    contents <- readFile fileName  
    -- take each line and make it a string, so the whole thing is list of strings
    let todoTasks = lines contents  
    -- take each line and add number infront of it
    -- i need to take each line and split that into a list of strings
        numberedTasks = map (\line ->  (sendTo (splitOn "," line))) todoTasks
       -- test =map (\line ->  (sendTo show (splitOn "," line))) todoTasks
        test = (foldr (\line acc -> (sendTo (splitOn "," line)): acc) [] todoTasks)
       -- addToTree = map (\line -> (addTo (splitOn "," line))) todoTasks
        -- numberedTasks = map (\line -> (foldr (\acc x -> acc ++ " " ++ x) "" (splitOn "," line) )) todoTasks 
  --  foldr treeInsert EmptyTree numberedTasks  
    return numberedTasks
-}
