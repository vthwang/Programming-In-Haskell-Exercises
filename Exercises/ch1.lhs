1.Give another possible calculation for the result of double (double 2).

double (double 2)
= double (2 + 2)
= (2 + 2) + (2 + 2)
= 4 + 4
= 8

2.Show that sum [x] = x for any number x.

sum [x]
= x + sum[]
= x + 0
= x

3.Define a function product that produces the product of a list of numbers, and show using your definition that product [2,3,4] = 24.

product [] = 1
product [x:xs] = n * product ns

product [2,3,4]
= 2 * (product[3,4])
= 2 * (3 * product[4])
= 2 * (3 * (4 * product[]))
= 2 * (3 * (4 * 1))
= 24

4.How should the definition of the function qsort be modified so that it produces a reverse sorted version of a list?

> rqsort :: [Int] -> [Int]
> rqsort [] = []
> rqsort (x:xs) = rqsort larger ++ [x] ++ rqsort smaller
>                  where
>                     larger = [a | a <- xs, a >= x]
>                     smaller = [b | b <- xs, b < x]

5.What would be the effect of replacing <= by < in the original definition of qsort? Hint: consider the example qsort [2,2,3,1,1].

> qsort :: [Int] -> [Int]
> qsort [] = []
> qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
>                 where
>                    smaller = [a | a <- xs, a < x]
>                    larger = [b | b <- xs, b > x]

It will remove the duplicates.
qsort [2,2,3,1,1]
= [1,2,3]
