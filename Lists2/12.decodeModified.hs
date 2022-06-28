data Encoding = Multiple Int Char | Single Char
    deriving (Show)

decodeModified :: [Encoding] -> String

decodeModified [] = []
decodeModified (Single a: str) = a : decodeModified str
decodeModified (Multiple n a: str) = a : decodeModified str
