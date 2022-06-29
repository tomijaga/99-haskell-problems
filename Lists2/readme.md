# Lists
## Problem 1

## Problem 11

  Modified run-length encoding.

Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.

Example:

```hs
λ>  encodeModified "aaaabccaadeeee"
    [Multiple 4 'a',Single 'b',Multiple 2 'c',
     Multiple 2 'a',Single 'd',Multiple 4 'e']
```

[Solution](./11.encodeModified.hs)

## Problem 12
Decode a run-length encoded list.

Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.

Example in Haskell:
```haskell
λ> decodeModified 
       [Multiple 4 'a',Single 'b',Multiple 2 'c',
        Multiple 2 'a',Single 'd',Multiple 4 'e']
"aaaabccaadeeee"
```

[Solution](./12.decodeModified.hs)

## Problem 13

## Problem 14
Duplicate the elements of a list.

Example:
```hs
λ> dupli [1, 2, 3]
  [1,1,2,2,3,3]
```

## Problem 15
Replicate the elements of a list a given number of times.

Example:
```hs
  λ> repli "abc" 3
  λ> "aaabbbccc"
```

[Solution](./15.repli.hs)