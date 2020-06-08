def disemvowel(string):
    bad_chars = { 'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'} 
    
    for i in bad_chars : 
        string = string.replace(i, '')
    return string
  
  test.assert_equals(disemvowel("This website is for losers LOL!"),
                              "Ths wbst s fr lsrs LL!")
