
trimStart :: Eq a => [a] -> a -> [a]
trimStart [] param = []
trimStart list param
  | param == head list = trimStart (tail list) param
  | otherwise = list

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [x] = [x]
compress list = let prefix = head list in prefix : compress (trimStart list prefix)

-- An alternative solution is

compress' (x : ys@(y : _))
  | x == y = compress ys
  | otherwise = x : compress ys
compress' ys = ys