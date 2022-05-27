{-  
(*) Find the last element of a list.
(Note that the Lisp transcription of this problem is incorrect.)

Example in Haskell:

λ> myLast [1,2,3,4]
4
λ> myLast ['x','y','z']
'z'

-}


myLast' :: [a] -> a
myLast' list = last list

myLast'' :: [a] -> a
myLast'' list = head (reverse list)


myLast :: [a] -> a
myLast list = if null (tail list) then (head list) else (myLast (tail list))

  
