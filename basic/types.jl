"""
    # Data Types
    - Ref: https://docs.julialang.org/en/v1/manual/types/
"""

# Type declaration
x::Int8 = 100
y::Float64 = 3.14159
c::Char = 'c'
f::Bool = (-10) < (-20)

# Numbers
# Int64
typeof(1)
# Float64
typeof(1.0)
# UInt8
typeof(0x01)
# Float32
typeof(0.3f0)
# Irrational{:\pi}
typeof(π)
# Complex{Int64}
typeof(1 + 2im)

# Collections
# Char
typeof('a')
# String
typeof("collection of chars")
# Vector{Int64}
typeof([1, 2, 3])
# Vector{Any}
typeof([0, 2.3, 'x'])
# Tuple{Char, Bool, Int64}
typeof(('a', true, Int64('c')))

# Symbol
typeof(:ok)
typeof(:custom_symbol)
