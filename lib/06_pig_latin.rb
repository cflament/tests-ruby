def translate (string)

    #transformer le string en tableau
    t = string.split(" ")
    t.map! do |word|

    #pour chaque mot, s'il commence par une voyelle j'ajoute ay à la fin
        if word[0] =~ /[aeiouy]/
            word += "ay"  

    #pour les mots commençant par une consonne, on cherche l'index de la première voyelle rencontrée    
        else
    #cas du "qu" en début de mot ou après une consonne
            if word.include?("qu") && word.index("qu")<= 1
                first_v = word.index(/[aeioy]/)
            else
                first_v = word.index(/[aeiouy]/)
            end 
    #identification du bloc à déplacer en fin de mot
            group_c = word[0...first_v]
    #mot final
            word = word[first_v...word.length] + group_c + "ay"
              
        end 
    end
    return t.join(" ")
end
