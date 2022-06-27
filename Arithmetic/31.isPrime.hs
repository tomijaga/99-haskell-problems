
isPrime :: Int -> Bool
isPrime n = [ x | x <- [2..n], mod n x == 0 ] == [n]
