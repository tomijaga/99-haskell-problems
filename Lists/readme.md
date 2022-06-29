# Problem 1

Find the last element of a list.

Example:

```hs
    λ> myLast [1,2,3,4]
    λ> 4
        
    λ> myLast ['x','y','z']
    λ> 'z'
```

[Solution](1.myLast.hs)


# Problem 2
Find the last but one element of a list.

Example:

```hs
    λ> myButLast [1,2,3,4]
    λ> 3

    λ> myButLast ['a'..'z']
    λ> 'y'
```

[Solution](2.myButLast.hs)


# Problem 3
Find the K'th element of a list. The first element in the list is number 1.

Example:
```hs
    λ> elementAt [1,2,3] 2
    λ> 2

    λ> elementAt "haskell" 5
    λ> 'e'
```

[Solution](3.elementAt.hs)


# Problem 4
Find the number of elements of a list.

Example:
```hs
    λ> myLength [123, 456, 789]
    λ> 3

    λ> myLength "Hello, world!"
    λ> 13
```

[Solution](4.myLength.hs)

# Problem 5

Reverse a list.

Example:
```hs
    λ> myReverse "A man, a plan, a canal, panama!"
    λ> "!amanap ,lanac a ,nalp a ,nam A"

    λ> myReverse [1,2,3,4]
    λ> [4,3,2,1]
```
[Solution](5.myReverse.hs)

# Problem 6

Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

Example in Haskell:

```hs
    λ> isPalindrome [1,2,3]
    λ> False

    λ> isPalindrome "madamimadam"
    λ> True

    λ> isPalindrome [1,2,4,8,16,8,4,2,1]
    λ> True
```

[Solution](6.isPalindrome.hs)

# Problem 7

Flatten a nested list structure.

Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).

We have to define a new data type, because lists in Haskell are homogeneous.

`data NestedList a = Elem a | List [NestedList a]`
```hs
    λ> flatten (Elem 5)
    λ> [5]

    λ> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
    λ> [1,2,3,4,5]

    λ> flatten (List [])
    λ> []
```

[Solution](7.flatten.hs)

# Problem 8

Eliminate consecutive duplicates of list elements.

If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

Example in Haskell:
```hs
    λ> compress "aaaabccaadeeee"
    λ> "abcade"
```

[Solution](8.compress.hs)

# Problem 9
Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

Example in Haskell:

```hs
    λ> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a',
                'a', 'd', 'e', 'e', 'e', 'e']
    λ> ["aaaa","b","cc","aa","d","eeee"]
```

[Solution](9.pack.hs)

# Problem 10
Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

```hs
    λ> encode "aaaabccaadeeee"
    λ> [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
```