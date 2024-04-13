#=
    The Caesar cipher is a simple shift cipher that relies on transposing 
    all the letters in the alphabet using an integer key between 0 and 26. 
    Using a key of 0 or 26 will always yield the same output due to modular 
    arithmetic. The letter is shifted for as many values as the value of the key.
=#

function rotate(n, char::Char)::Char
    if n == 0
        return char
    end
    
    is_letter(char) ? mod_char26(char, n) : char
end

function rotate(n, str::String)::String
    if n == 0
        return str
    end

    result = ""
    for char in str
        result *= rotate(n, char)
    end

    result
end

function mod_char26(char::Char, n::Int64 = 0)::Char
    code = get_code26(char)
    cap = is_cap(char)
    rot = code + n
    rot = rot > 26 ? rot%26 : rot
    Char(cap ? rot + 64 : rot + 96)
end

function is_letter(char::Char)::Bool
    code = Int64(char)
    if 65 <= code <= 90 || 97 <= code <= 122
        return true
    end
    false
end

function is_cap(char::Char)::Bool
    65 <= Int64(char) <= 90
end

function get_code26(char::Char)::Int64
    code = Int64(char)
    if 97 <= code <= 122
        return code - 96
    elseif 65 <= code <= 90
        return code - 64
    else
        throw(DomainError("Invalid: Not an ASCII letter"))
    end
end

rotations = [
    rotate(13, "abcdefghijklmnopqrstuvwxyz"),
    rotate(1, "abcdefghijklmnopqrstuvwxyz"),
    rotate(13, 'm'),
    rotate(13, "The quick brown fox jumps over the lazy dog."),
    rotate(13, "Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
]

for rot in rotations
    println(rot)
end