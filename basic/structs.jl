# Data structures

# No-mutable structure
struct Point
    x
    y
end

p = Point(1.28, 2.003)
typeof(p)

# Mutable structure
# Allows you to modify field values

mutable struct Dog
    name::String
    age::Integer
    breed::String
end

# Instance of Dog struct
mydog = Dog(
    "Frida",
    1,
    "doggo-mix"
)

typeof(mydog)

# Access
mydog.breed

# Mutate struct fields
# -> You cannot add new fields to a data struct
mydog.age = 3
mydog
