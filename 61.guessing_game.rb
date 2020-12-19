arr =  (1..100).to_a

secret_num = 4

def find_num(arr, secret_num)
    num_guesses = 0
    min = arr[0]
    max = arr[-1]
    guess = (min + max) / 2
    while secret_num != 
        guess = (min + max) / 2
        break if guess == secret_num
        num_guesses += 1
        if guess < secret_num
            min = guess + 1
        else
            max = guess - 1
        end
    end
    num_guesses
end

p find_num(arr, 4)