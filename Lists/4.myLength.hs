
myLength :: [a] -> Int
myLength list = sum [1 | _ <- list]

myLength' :: [a] -> Int
myLength' list = if null list then 0 else ((myLength (tail list)) + 1)  
