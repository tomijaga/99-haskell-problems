
pack :: [a] -> [[a]]
pack [] = []
pack all@(x : ys@(y : _))
  | x == y = [x : ys]
  | otherwise = pack ys
