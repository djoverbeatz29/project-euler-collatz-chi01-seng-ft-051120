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
    seq.push(n)
    seq
end

def longest_collatz
    max_len = 0
    max_start = 0
    (500000..1000000).each do |start|
        curr_len = collatz(start).length
        if (curr_len > max_len)
            max_start = start
            max_len = curr_len
        end
    end
    max_start
end