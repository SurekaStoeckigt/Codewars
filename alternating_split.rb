#For building the encrypted string:
#Take every 2nd char from the string, then the other chars, that are not every 2nd char, and concat them as new String.
#Do this n times!

#Examples:

#"This is a test!", 1 -> "hsi  etTi sats!"
#"This is a test!", 2 -> "hsi  etTi sats!" -> "s eT ashi tist!"
#Write two methods:

#def encrypt(text, n)
#def decrypt(encrypted_text, n)
#For both methods:
#If the input-string is null or empty return exactly this value!
#If n is <= 0 then return the input text.

def encrypt(text, n)
  text_arr = []
  if text.nil? ||  text == ""
      text_arr << ""
      text_arr.join("")
  end
  if n <= 0
      text_arr << text.split("")
      return text_arr.join("")
  else
      text_arr << text
      i = 0
      while i <= n do 
      text_arr_2 = (0..text_arr.length).select {|x| x % 2 == 1}.map!{|x| text_arr[x]}.join("") + (0..text_arr.length).select {|x| x % 2 == 0}.map!{|x| text_arr[x]}.join("")
      text_arr = text_arr_2
      
      i = i+1
      end
      return text_arr
  end
end 
puts encrypt("This is a test!", 0)
puts encrypt("This is a test!", 1)
puts encrypt("This is a test!", 2)

def decrypt(text, n)
 #text_arr = ""
    null_arr = []
    text_arr = text.split("")
    count = 1
    if text.nil? || text == ""
        null_arr << text
        return null_arr.join("")
    end 
    
    if n <=0 
      null_arr << text
      return null_arr.join("")
  
    else
      while count <= n do
        sent = ""
        length = (text_arr.length/2).floor
        first_arr = text_arr[0..(length-1)]
        second_arr = text_arr[length..-1]
        i = 0
      while i <= length do 
        sent = sent + "#{second_arr[i]}#{first_arr[i]}"
        i = i+1
        text_arr = sent.split("")
        if first_arr.length > second_arr.length
            sent = sent + first_arr[(first_arr.length) -1]
        end 
      end
        count = count + 1
      end 
      return sent
    end 
end
puts decrypt("This is a test!", 0)

## better solns
## -------------------------------------------
=begin
def encrypt(text, n)
  size = (text.size/2) - 1
  # science bitches
  n.times do 
    ittr = []
    size.downto(0).each{|i| ittr << (i == 0 ? [size] : (0..i).to_a.map{|x|x*2+(size-i)})}
    ittr.each do |i|
      i.each do |x|
        text[x+1], text[x] = text[x], text[x+1]
      end  
    end
  end
  text
end

def decrypt(en_text, n)
  size = (en_text.size/2) - 1
  n.times do 
    ittr = []
    size.downto(0).each{|i| ittr << (i == 0 ? [size] : (0..i).to_a.map{|x|x*2+(size-i)})}
    ittr.reverse!.each do |i|
      i.each do |x|
        en_text[x+1], en_text[x] = en_text[x], en_text[x+1]
      end  
    end
  end
  en_text
end
=end

=begin
def encrypt(text, n)
  return text if n <= 0
  encrypt(text.scan(/(.)(.)?/).transpose.reverse.join, n-1)
end

def decrypt(text, n)
  return text if n <= 0
  c, s = text.chars, text.size/2
  decrypt(c.drop(s).zip(c.take s).join, n-1)
end
=end