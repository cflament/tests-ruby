def add(a,b)
    return a+b
end

def substract(a,b)
    return a-b
end

def sum(array)
    return array.sum
end

def multiply(a,b)
    return a*b
end

def power(a,b)
    a**b
end

def factorial2(a)
    if a == 0 
        f = 1
    else 
        i = 1
        f = 1
        while i <= a
        f = f*i
        i += 1 
        end 
    end
    return f
end

def factorial(a)
    return (1..a).inject(:*) || 1
end 
