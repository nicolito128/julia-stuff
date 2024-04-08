# Dictionaries / Hash Tables
# -> Key:Value data structure

example = Dict(
    "name" => "Pablo",
    :age => 19,
    0 => false
)

example["name"]
example[:age]
example[0]

typeof(example)

# Add a new key-value
example[:email] = "example@gmail.com"
example

# Remove key-value pairs
removed = pop!(example, "name")
example
