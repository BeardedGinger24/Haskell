-- 1. 4pts: Write a Haskell program named getbmi.hs. It will ask the user to input weight in pounds
-- (not kg, you have to convert to kg later) and inches (again, non metric). Perform any conversions needed,
-- calculate BMI, then print the BMI, along with the string messages of the earlier BMI functions we wrote in
-- lecture ("You're normal", etc.) depending on the BMI number.

main = do  
    putStrLn "What's your weight? (in pounds)"  
    weight <- getLine  
    putStrLn "What's your height? (in inches)"  
    height <- getLine  
    let weight' = (read weight) * 0.45359237
        height' = 0.0254 * (read height)
    putStrLn $ "Hey, " ++ (bmiTell1 weight' height')

bmiTell1 :: (RealFloat a) => a -> a -> String  
bmiTell1 weight height  
    | bmi <= skinny = "you're underweight"  
    | bmi <= normal = "you're supposedly normal" 
    | bmi <= fat    = "you're overweight"   
    | otherwise     = "you're obese"  
    where bmi = weight / height ^ 2  
          skinny = 18.5  
          normal = 25.0  
          fat = 30.0  
