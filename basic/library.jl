# Base Lib

# rand()
rand(10)

# Random Numbers Library
using Random

Random.seed!(1)
rand(10)

# Example 2
Random.seed!(42)
data = randn(1_000)

function average(vec::Vector)
    sum(vec) / length(vec)
end

average(data)

# Statistics Library
using Statistics

Statistics.mean(data)
Statistics.median(data)
Statistics.std(data)
