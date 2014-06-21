{-| Keep equal elements that are at the same position in both lists

  Examples:

  >>> keepEqual "hello" "world"
  "l"

  >>> keepEqual (repeat 1) [0..10]
  [1]

  >>> keepEqual [True, False, True] (repeat True)
  [True,True]
-}

keepEqual :: Eq a => [a] -> [a] -> [a]
keepEqual [] _ = []
keepEqual _ [] = []
keepEqual (a:as) (b:bs) = (if a == b then [a] else []) ++ keepEqual as bs

main = do
    print $ keepEqual "hello" "world"
    print $ keepEqual (repeat 1) [0..10]
    print $ keepEqual [True, False, True] (repeat True)
