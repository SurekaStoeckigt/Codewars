#Complete the function/method so that it returns the url with anything after the anchor (#) removed.

#Examples:
# returns 'www.codewars.com'
#remove_url_anchor('www.codewars.com#about')

# returns 'www.codewars.com?page=1' 
#remove_url_anchor('www.codewars.com?page=1')

def remove_url_anchor(string)
    url = string.split("#")
    print url
    return url[0]
end

puts remove_url_anchor('www.codewars.com#about')