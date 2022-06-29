repli' :: String -> Int -> String
repli' [] _ = []
repli' (x:xs) 1 = x : (repli' xs 3)
repli' (x:xs) n = x : (repli' (x: xs) (n - 1))

repli :: String -> String
repli str = repli' str 3
