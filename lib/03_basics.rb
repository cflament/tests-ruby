def who_is_bigger(a, b, c)
    h = {:a => a,:b => b,:c => c}
    if h.values.count(nil)>0
        return "nil detected"
    else 
        return "#{h.key(h.values.max)} is bigger"
    end
end

def reverse_upcase_noLTA(mystring)
    return mystring.reverse.upcase.gsub(/[LTA]/,"")
end 

def array_42(myarray)
    return myarray.count(42) > 0
end

def magic_array(myarray)
    return myarray.flatten.sort.delete_if {|x| x % 3 == 0}.map {|x| x * 2}.uniq
end 

#print magic_array([[32, 54], [48, 12], [21, [1, 2, [3]]], 7, 8])