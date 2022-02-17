/*
Title     : 2000. Reverse Prefix of Word
URL       : https://leetcode.com/problems/reverse-prefix-of-word/
Author    : EUNJI LEE
Created   : 2022.02.17
*/

// Solution 1.
class Solution {
    func reversePrefix(_ word: String, _ ch: Character) -> String {
        var res = [Character](), isReversed = false
        
        for char in word {
            res.append(char)
            
            if !isReversed, char == ch {
                res.reverse()
                isReversed = true
            }
        }
        
        return res.map{ String($0) }.reduce("", +)
    }
}