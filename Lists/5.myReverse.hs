{-

 Reverse a list.

Example in Haskell:

λ> myReverse "A man, a plan, a canal, panama!"
"!amanap ,lanac a ,nalp a ,nam A"
λ> myReverse [1,2,3,4]
[4,3,2,1]

-}
myReverse :: [a] -> [a]

preRev oldList newList = 
  (if null (tail oldList) then
    ((last oldList): newList)
  else (preRev (tail oldList) ((head oldList) : newList)))

myReverse list = preRev list []
