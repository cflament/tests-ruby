def time_string(seconds)
    require 'time'
    Time.at(seconds).utc.strftime("%H:%M:%S")
end

puts time_string(4000)
