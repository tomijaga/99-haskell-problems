
dropEvery' :: String -> Int -> Int -> String
dropEvery' [] _ _ = []
dropEvery' (x:xs) n 1 = dropEvery' (xs) n n
dropEvery' (x:xs) n i = (x : dropEvery' (xs) n (i - 1))

dropEvery :: String -> Int -> String
dropEvery str 0 = ""
dropEvery str n = dropEvery' str n n
