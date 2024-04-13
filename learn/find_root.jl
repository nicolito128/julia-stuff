"""
    # Find the root(index) of a number using binary search
    - Ref: https://en.wikipedia.org/wiki/Binary_search_algorithm
    - Ref: https://www.geeksforgeeks.org/binary-search/

    # Example
    - find_root(4) ~= √4
    - find_root(7, index=3) ~= ∛7
    - find_root(8, epsilon=0.001, digits=4) ~= √8
    -- Shows the first 4 digits of √8 and has a tolerance of 0.001 (epsilon)
"""

function find_root(n; index=2, epsilon=0.01, digits = 3)
    low = 0
    hight = n
    guess = (hight + low) / 2
    counter = 0

    while abs(guess^index - n) >= epsilon
        println(counter, "\tGuess = $guess\tGuess root($index) = $(guess^index)")

        if abs(guess^index) < abs(n)
            low = guess
        else
            hight = guess
        end

        counter += 1
        guess = (hight + low) / 2
    end

    println("\tGuess = $guess\tGuess for (index=$index) = $(guess^index)")
    guess = round(guess, digits = digits)
    println("\nThe root($index) of $n is $guess")
end

find_root(7, index=3)
find_root(8, epsilon=(1 / (10^10)), digits = 10)
find_root(4)