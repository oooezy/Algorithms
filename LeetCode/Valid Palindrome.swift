/*
Title     : 125. Valid Palindrome
URL       : https://leetcode.com/problems/valid-anagram/
Author    : EUNJI LEE
Created   : 2022.08.01
*/

// Solution 1.
class Solution {
    func isPalindrome(_ s: String) -> Bool {        
        var str = ""
        
        for char in s.lowercased() where char.isLetter || char.isNumber {
            str.append(char)
        }
        
        return str == String(str.reversed())
    }
}