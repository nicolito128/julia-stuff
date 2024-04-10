# Anonymous Functions

# map(...)
## Transform collection c by applying f to each element.
## For multiple collection arguments, apply f elementwise.

countries = [
    "Argentina",
    "Chile",
    "Brazil"
]

## map(<function>, <elements>)
map(length, countries)

##
i = 0
map(country -> begin
    global i += 1
    "#$i " * country 
end, countries)

##
odd = [x for x in 1:2:10]
even = map(x -> x - 1, odd)

##
## +(a, b)
map(+, [1, 2, 3], [10, 20, 30])

## Passing our functions
twice(a, b) = a * b

map(twice, [0, 1, 2, 3], [2, 4, 8, 16])
map(twice, ["A", "B", "C"], ["1", "2", "3"])
