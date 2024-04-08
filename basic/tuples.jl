# Tuples
# -> No mutable structure

t1 = (1, 2, 3,4)
typeof(t1)

t2 = ("a", "b")
typeof(t2)

t3 = ('1', 2, 3.0f0)
typeof(t3)

# Access
t3[3]

# Destructure assignment
(name, age, breed) = ("Frida", 1, "doggo-mix")
name
age
breed

# Length
length(t3)
