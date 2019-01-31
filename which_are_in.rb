def in_array(array1, array2)
    result = []
    array1.each do |check|
        array2.each do |item|
            if item.include? check
               result.push(check)
            end   
        end
    end       
    #return result.uniq.sort_by { |f| f.class == Array ? f.first : f }
   # return puts result.uniq.map{|x| [*x].join(",") }.sort
    return result.uniq.flatten.sort
end

   
a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

puts in_array(a1, a2)
=begin 
def in_array(array1, array2)
    result = []
    array1.each do |check|
        array2.each do |item|
            if item.include? check
               result.push(check)
            end   
        end
    end       
    return result.uniq.sort_by { |f| f.class == Array ? f.first : f }
=end