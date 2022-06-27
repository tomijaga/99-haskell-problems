data Encoding = Multiple Int Char | Single Char
    deriving (Show)
encodeModified :: String -> [Encoding]

encode :: Char -> String -> Int -> [Encoding]

encode c [] 0 = [Single c]
encode c [] n = [Multiple n c]

encode a (b: t) n
    | a == b = encode b t (n + 1)
    | n > 0 = Multiple n a : encode b t 0
    | otherwise = Single a : encode b t 0

encodeModified (a: str) = encode a str 0
