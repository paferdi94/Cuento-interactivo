module Fibonacci where

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fibList :: Int -> [Int]
fibList 1 = [1]
fibList n = fibList(n-1) ++ [fib(n)]