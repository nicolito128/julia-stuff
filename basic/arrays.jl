# Arrays / Vectors / Matrix

# Vectors and matrix
col_vec = [1, 2, 3, 4, 5, 6]

row_vec = [4.0 5.0 6.0]

m = [1 2 3; 4 5 6]
# C like: m[2][1]
m[2,1]

# Mutate value
col_vec[2] = 4
col_vec

# Length
length(col_vec)
length(m)

# Sum
sum(col_vec)

# Sort
rev_col_vec = sort(col_vec; rev=true)

# Sort Vectors
# (descending, destructive)
# Mutate "in place"
sort!(col_vec, rev = true)
col_vec

# Pushing Data
push!(col_vec, 0)
col_vec

# Remove the element from the end of vector
removed = pop!(col_vec)
col_vec

# Array with elements of different types
multi_type = [
    1, "2", '3',
    true, false, [4 5]
]

typeof(multi_type)