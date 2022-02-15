/*
Title     : 804. Unique Morse Code Words
URL       : https://leetcode.com/problems/unique-morse-code-words/
Author    : EUNJI LEE
Created   : 2022.02.15
*/

// Solution 1.
class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        let morseCode = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        var res = Set<String>() 
        
        for word in words { // gin, zen, gig, msg
            var code = ""
            
            for unicode in word.unicodeScalars {//gin
                let index = Int(unicode.value - 97)
                code += morseCode[index]
            }
            res.insert(code)
        }
        return res.count
    }
}
