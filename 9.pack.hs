-- Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

-- Example:

-- * (pack '(a a a a b c c a a d e e e e))

-- ((A A A A) (B) (C C) (A A) (D) (E E E E))
-- Example in Haskell:

-- λ> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a',
--              'a', 'd', 'e', 'e', 'e', 'e']
-- ["aaaa","b","cc","aa","d","eeee"]

pack :: [a] -> [[a]]
pack [] = []
pack all@(x : ys@(y : _))
  | x == y = [x : ys]
  | otherwise = pack ys
