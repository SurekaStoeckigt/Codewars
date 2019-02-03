def solve(st)

if st.split("").length % 2 != 0 
    return -1
end

rev = 0 

loop do 
parenthesis = st.gsub!("()", "")
if parenthesis[0] == ")"
    rev += 1
    parenthesis[0] = "("
end

if parenthesis[-1] == "("
    rev +=1
    parenthesis[-1] = ")"
end 

if parenthesis.length <= 2
    break 
end

end 
#parenthesis
 rev
end

a1 = ")()("
a2 = "((()"
a3 = "((("
a4 = "())(((" 

puts solve(a1)
puts solve(a2)
puts solve(a3)
puts solve(a4)