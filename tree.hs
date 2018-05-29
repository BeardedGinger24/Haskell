data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq) 


-- Functions to insert elements into trees

-- Create a single Node
makeNode :: a -> Tree a  
makeNode x = Node x EmptyTree EmptyTree  

-- Inserting into a tree 
treeInsert :: (Ord a) => a -> Tree a -> Tree a  
treeInsert x EmptyTree = makeNode x  
treeInsert x (Node a left right)   
    | x == a = Node x left right  
    | x < a  = Node a (treeInsert x left) right  
    | x > a  = Node a left (treeInsert x right) 


-- Check if an element is in a tree

treeElem :: (Ord a) => a -> Tree a -> Bool  
treeElem x EmptyTree = False  
treeElem x (Node a left right)  
    | x == a = True  
    | x < a  = treeElem x left  
    | x > a  = treeElem x right   


data CS  =  Paradigms | Automota 

instance Show CS where  
    show Paradigms = "Wat"  
    show Automota = "Useless"  