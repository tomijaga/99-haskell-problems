
myReverse :: [a] -> [a]

preRev oldList newList = 
  (if null (tail oldList) then
    ((last oldList): newList)
  else (preRev (tail oldList) ((head oldList) : newList)))

myReverse list = preRev list []
