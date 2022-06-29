
myLast' :: [a] -> a
myLast' list = last list

myLast'' :: [a] -> a
myLast'' list = head (reverse list)


myLast :: [a] -> a
myLast list = if null (tail list) then (head list) else (myLast (tail list))

  
