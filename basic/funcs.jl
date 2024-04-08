function guass_sum(n)
    (n^2 + n) ÷ 2
end

guass_sum(10)

# Tipos
square_of_sum(n::Real)::Real = guass_sum(n)^2

square_of_sum(5)

