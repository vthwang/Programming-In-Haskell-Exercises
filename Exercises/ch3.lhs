1.What are the types of the following values?

['a','b','c']
('a','b','c')
[(False,'O'),(True,'1')]
([False,True],['0','1'])
[tail, init, reverse]

['a','b','c'] :: [Char]
('a','b','c') :: (Char,Char,Char)
[(False,'O'),(True,'1')] :: [(Bool,Char)]
([False,True],['0','1']) :: ([Bool],[Char])
[tail, init, reverse] :: [[a] -> [a]]

2.Write down definitions that have the following types; it does not matter what the definitions actually do as long as they are type correct.

bools :: [Bool]
nums :: [[Int]]
add :: Int -> Int -> Int -> Int
copy :: a -> (a,a)
apply :: (a -> b) -> a -> b

> bools = [False, True]
> nums = [[1,2],[3,4],[5,6]]
> add x y z = x + y + z
> copy x = (x, x)
> apply f x = f x

3.What are the types of the following functions?

> second xs = head (tail xs)
> swap (x,y) = (y,x)
> pair x y = (x,y)
> double x = x*2
> palindrome xs = reverse xs == xs
> twice f x = f (f x)

Hint: take care to include the necessary class constraints in the types if the functions are defined using overloaded operators.

second :: [a] -> a
swap :: (a,b) => (b,a)
pair :: a -> b -> (a, b)
double :: Num a => a -> a
palindrome :: [a] -> Bool
twice :: (a -> a) -> a -> a

4.Check your answers to the preceding three questions using GHCi.

Use `:t` in GHCi to check the answer.

5.Why is it not feasible in general for function types to be instances of the Eq class? When is it feasible? Hint: two functions of the same type are equal if they always return equal results for equal arguments.

To show the functions are equivalent, we must ensure the input and output are equivalent. However, it's not possible to check the infinite inputs, so only finite cases are doable.
