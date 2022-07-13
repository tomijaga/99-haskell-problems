slice :: String -> Int -> Int -> String
slice str start end = take (end - start + 1) (drop (start - 1) str)