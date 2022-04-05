module Main where

luhnDouble :: Int -> Int
luhnDouble n =
    let i = n * 2 in
    if i > 10 then i - 9 else i


validCard :: Int -> Int -> Int -> Int -> Bool
validCard a b c d =
    let notValid = (luhnDouble a + luhnDouble b + luhnDouble c + luhnDouble d) mod 10 in
    if notValid then False else True


main :: IO ()
main = do {
    print(luhnDouble 10)
}
