split :: String -> Int -> [String]
split str n = [(take n str), (drop n str)]