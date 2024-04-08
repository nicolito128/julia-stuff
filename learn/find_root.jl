
# Find the root(index) of a number using binary search
function find_root(n; index=2, epsilon=0.01)
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
    guess = round(guess, digits = 3)
    println("\nThe root($index) of $n is $guess")
end

find_root(7, index=3)
find_root(8)
find_root(4)