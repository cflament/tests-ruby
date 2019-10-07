def echo(string)
    return string
end 

def shout(string)
    return string.upcase
end

def repeat(string, x=2)
    return ([string] * x).join(" ")
end 

def start_of_word(string, x)
    return string[0..x-1]
end

def first_word(string)
    #position de l'espace = fin du premier mot
    pos = string.index(" ")
    #retourne les caractères jusqu'à l'espace
    return string[0,pos]
end 

def titleize(string)
    small = ["the", "and"]
    first, *rest = string.split(" ")
    first.capitalize!
    rest.select { |w| w != 'and' && w != 'the' && w.length > 2 }.each(&:capitalize!)
    return [first, *rest].join (" ")

end 


puts titleize("the bridge over the river kwai")
