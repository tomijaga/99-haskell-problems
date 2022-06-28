data Encoding = Multiple Int Char | Single Char
    deriving (Show)
encodeModified :: String -> [Encoding]

encode :: Char -> String -> Int -> [Encoding]

encode c [] 1 = [Single c]
encode c [] n = [Multiple n c]

encode a (b: t) n
    | a == b = encode b t (n + 1)
    | n > 1 = Multiple n a : encode b t 1
    | otherwise = Single a : encode b t 1

encodeModified (a: str) = encode a str 1


decodeModified :: [Encoding] -> String

decodeModified [] = []
decodeModified (Single a: str) = a : decodeModified str
decodeModified (Multiple 1 a: str) = a : decodeModified str
decodeModified (Multiple n a: str) = a : decodeModified (Multiple (n - 1) a: str)

