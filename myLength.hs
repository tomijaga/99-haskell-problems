{-
Find the number of elements of a list.

Example in Haskell:

λ> myLength [123, 456, 789]
3
λ> myLength "Hello, world!"
13

-}
myLength :: [a] -> Int
myLength list = sum [1 | _ <- list]

myLength' :: [a] -> Int
myLength' list = if null list then 0 else ((myLength (tail list)) + 1)  
