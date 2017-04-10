{--

7. Flatten a nested list structure. Transform a list, possibly holding lists
as elements into a `flat' list by replacing each list with its elements
(recursively).

--}

module Exercise7
( NestedList
, flatten
) where

data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem x)  = [x]
flatten (List xs) = concatMap flatten xs
