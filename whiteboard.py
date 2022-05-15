#Given an array of strings words, return the words that can be typed using letters of the alphabet 
# # #on only one row of American keyboard like the image below.
#In the American keyboard:
#the first row consists of the characters "qwertyuiop",
#the second row consists of the characters "asdfghjkl", and
#the third row consists of the characters "zxcvbnm".

#Example 1:
#Input: words = ["Hello","Alaska","Dad","Peace"]
#Output: ["Alaska","Dad"]
#Example 2:
#Input: words = ["omk"]
#Output: []
#Example 3:
#Input: words = ["adsdf","sfd"]
#Output: ["adsdf","sfd"]

#Constraints:
##1 <= words[i].length <= 100
#ords[i] consists of English letters (both lowercase and uppercase).

first_row = 'qwertyuiop'
second_row = 'asdfghjkl'
third_row = 'zxcvbnm'

words = ["Hello","Alaska","Dad","Peace"]

def something(arr):
    result = []
    for word in arr:
        word_s = set(word.lower())        
        for row in keyboard_rows:
            if word_s.issubset(row):
                result.append(word)
                break
    return result


    def somethingCodeGolf(arr):
    return [word for word in arr 
            if set(word.lower()).issubset({'q','w','e','r','t','y','u','i','o','p'}) 
            or set(word.lower()).issubset({'a','s','d','f','g','h','j','k','l'}) 
            or set(word.lower()).issubset({'z','x','c','v','b','n','m'})]

words = ["Hello","Alaska","Dad","Peace"]
somethingCodeGolf(words)