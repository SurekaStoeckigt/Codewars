test1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
test2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]


def max_string(array1, array2)

    max = 0
    array1.each do |a1|
        array2.each do |a2|
            if (a1.length - a2.length).abs > max
                max = (a1.length - a2.length).abs
            end       
        end   
    end    
    return max
end

puts max_string(test1, test2)
