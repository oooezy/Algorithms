/*
Title     : 2108. Find First Palindromic String in the Array
URL       : https://leetcode.com/problems/find-first-palindromic-string-in-the-array/
Author    : EUNJI LEE
Created   : 2022.02.14
*/

// Solution 1.
class Solution {
    func firstPalindrome(_ words: [String]) -> String {
        for word in words {
            if word == String(word.reversed()) {
                return word
            } 
        }
        return ""
        
    }
}
