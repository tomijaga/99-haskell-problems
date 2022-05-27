{-
Eliminate consecutive duplicates of list elements.

If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

Example:

* (compress '(a a a a b c c a a d e e e e))
(A B C A D E)
Example in Haskell:

λ> compress "aaaabccaadeeee"
"abcade"

-}

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