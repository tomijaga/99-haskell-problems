
dupli' :: String -> Bool -> String

dupli' [] _ = []
dupli' (c: str) bool 
    | bool == True = c : dupli' (c: str) False
    | otherwise = c : dupli' str True

dupli :: String -> String
dupli str = dupli' str False