isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome list@(x : xs) = (x == last list) == isPalindrome (newL xs)
  where
    newL [] = []
    newL xs = init xs

isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' xs = xs == reverse xs