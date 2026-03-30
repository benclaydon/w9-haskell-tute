-- ascending :: Ord a => [a] -> Bool
-- ascending xs = all (==True) (map isAscending (pairList xs))


-- pairList :: Ord a => [a] -> [(a, a)]
-- pairList xs = zip xs xs

-- isAscending :: Ord a => (a, a) -> Bool
-- isAscending a = fst(a) >= snd(a)

-- main :: IO ()
-- main = do
--     let xs = [1, 3, 5, 11, 15]
--     print (pairList xs)

isAscending:: Ord a => [a] -> [Bool]
isAscending (x:y:rest) = (x < y):isAscending (y:rest)
isAscending [x] = [ True ]
isAscending [] = []

allTrue :: [Bool] -> Bool
allTrue [] = True
allTrue (b:bs) = b && allTrue bs



main :: IO ()
main = do
    let xs = [1, 17, 5, 11, 15]
    print (isAscending xs)