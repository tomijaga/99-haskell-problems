
import Data.Maybe ()

newtype Elem a = Num a

data NestedList a = Elem a | List [NestedList a]

flatten :: [NestedList a] -> [NestedList a]
flatten list = list
