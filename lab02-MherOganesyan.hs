--Lab 02 Mher Oganesyan

list1 = [1..30]
list2 = [6,9..39]

head list2
tail list2

listcomp = [x*x | x <- list1]
--or listcomp = [x^2 | x <- list1]

theMatrix1 = [(x,x+50) | x<-[1..50]]
theMatrix2 = [(x,x+50) | x<-[1..50], x `mod` 2 == 1]
--or theMatrix2 = [(x,x+50) | x<-[1,3..50]], [x | x<-zip[1,3..50][51,53..100]]

theMatrixModified = drop 10 theMatrix2

product[1..10] 
--or factorial n = product[1..n]