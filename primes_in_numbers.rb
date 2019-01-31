#Given a positive number n > 1 find the prime factor decomposition of n. The result will be a string with the following form :

# "(p1**n1)(p2**n2)...(pk**nk)"
#with the p(i) in increasing order and n(i) empty if n(i) is 1.

#Example: n = 86240 should return "(2**5)(5)(7**2)(11)"

def primeFactors(n)

=begin
nums = (2..n).to_a
primes = (2..n).to_a
    nums.each do |num|
    i = 2
        while i <= num
          if  num % i == 0 && i != num
            primes.delete(num)
          else
          end
          i +=1
        end
        
    end 
=end
=begin  
n_arr = (0..n).to_a
#k = (0..n).to_arr
n_arr.each do |num|
    primes.each do |prime|
    index = 0
    sum = 0 
        while prime[index]**num <= sum do 
            sum = sum + prime[index]**num
            if sum = n
                puts "#{prime[index]}**#{num}"
            else
            end
            index = index + 1
            
        end 
    end 
end 

end
=end
arr = []
    while n%2 == 0 do  
        n = n/2
        arr << 2
    end 
    #print "2**#{n}"
    (3..Math::sqrt(n)).each do |num|
        while n%num == 0 do
            #puts "#{num}" 
            n = n/num;
            arr << num
            #print "#{num}**#{n}"
        end
       
    end
     if n > 2
      arr << n
     end
    #print arr 
   new_arr = arr.uniq.map{|t| [t,arr.count(t)]}.to_h
   #print new_arr
   string = ""
   new_arr.each do |key, value|
    if value == 1
        string = string + "(#{key})"
    else
        string = string + "(#{key}**#{value})"
    end
   end
   puts string
end

 # string = ""
  # arr.uniq.map{|t| [t,arr.count(t)]}.to_h.each do |key, value|
  
   # if value == 1
 #         string = string + "(#{key})"
    #else
  #       string = string + "(#{key}**#{value})"
    #end
   #end
   #return string 

#arr = arr.group_by(&:itself) # {1=>[1], 2=>[2, 2], 3=>[3, 3, 3], 4=>[4]}
#arr = arr.map { |k,v| [k, v.count] } # [[1, 1], [2, 2], [3, 3], [4, 1]]
#arr = arr.to_h

primeFactors(600)
=begin
# A function to print all prime factors of  
# a given number n 
def primeFactors(n): 
      
    # Print the number of two's that divide n 
    while n % 2 == 0: 
        print 2, 
        n = n / 2
          
    # n must be odd at this point 
    # so a skip of 2 ( i = i + 2) can be used 
    for i in range(3,int(math.sqrt(n))+1,2): 
          
        # while i divides n , print i ad divide n 
        while n % i== 0: 
            print i, 
            n = n / i 
              
    # Condition if n is a prime 
    # number greater than 2 
    if n > 2: 
        print n 
=end