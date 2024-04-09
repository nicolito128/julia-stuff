# Control Flow

## Assign
x, y = 1, 2 # (x, y) = (1, 2)
y, x = x, y # (2, 1)

## Conditional Evaluation
task_1() = println("$y > $x")
task_2() = println("$y < $x")
task_3() = println("$y == $x")

if y > x
    task_1()
elseif y < x
    task_2()
else
    task_3()
end

# Ternary Operator
## <condition> ? <true case> : <false case> | a ? b : c
x > y ? task_1() : (x < y ? task_2() : task_3())

# While loop
i = 1
while i <= 10
    println(i)
    i += 1
end

# For loop
## start:stop (range object, inclusive interval)
## steps +1
for i = 0:9
    println(i)
end

## start:step_jump:stop
for i = 0:2:10
    println(i)
end # Shows: 0 2 4 6 8 10

# Loop over collection
## for <elem> in <collection>
odds = [1, 3, 5, 7, 9]
for odd in odds
    println(odd)
end

vocals = ['a', 'e', 'i', 'o', 'u']
for vocal in vocals 
    println(vocal)
end

## i = <range> like:
for i in 9:-1:0 # i = 9:-1:0
    println(i)
end

## Loop over strings
## An string is a collection of characters
message = "Hello"
for char in message
    println(char)
end

## Loop over dictionaries
dog = Dict(
    :name => "Frida",
    :age => 1,
    :breed => "doggo-mix"
)

for (key, value) in dog
    println("$key\t$value")
end