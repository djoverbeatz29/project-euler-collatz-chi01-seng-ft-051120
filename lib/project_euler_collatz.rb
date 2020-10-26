def even_next(n)
    n / 2
end

def odd_next(n)
    3 * n + 1
end

def next_value(n)
    n % 2 === 0 ? even_next(n) : odd_next(n)
end

def collatz(n)
    seq = []
    while n > 1
        seq.push(n)
        n = next_value(n)
    end
    sequence.push(n)
end

def longest_collatz
end