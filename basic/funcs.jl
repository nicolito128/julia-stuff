# Functions
# `function <name>(<arguments>...) <code> end
# `<func_name>(<args>...) = <expr>`
function guass_sum(n)
    (n^2 + n) ÷ 2 # returns the last evaluation
end

## Calling a function
guass_sum(10)
guass_sum(5)

# In one line.
# Using types.
square_of_sum(n::Real)::Real = guass_sum(n)^2
square_of_sum(5)

# Early return
function add(n, m)
    return n + m
    n + m
end

add(1, 4)

# Example
hypotenuse(a, b) = sqrt(a^2 + b^2)
hypotenuse(3, 4)

# Exceptions / Errors
function div(n::Real, m::Real)::Real
    if m == 0
        thorw(error("division by zero"))
    end
    
    return n / m
end

div(1, 0)
div(1, 5)

# Generic Functions
## A generic function is a single function,
## but consist in of many definitions, or methods.

# 'mytypeof' function has 4 methods
mytypeof(n::Int64) = "Int64"
mytypeof(n::Number) = "Number"
mytypeof(n::String) = "Text"
mytypeof(n::Any) = "Any"

# Multiple Dispatch
## Refers to dispatch the most appropiate method
## based on the data types of all of the function arguments.

function show_type(x)
    println("$x type is: ", mytypeof(x))
end

show_type(1)
show_type(π)

# Display a list of methods for a function
methods(mytypeof) # 4 methods
methods(+) # 189 methods