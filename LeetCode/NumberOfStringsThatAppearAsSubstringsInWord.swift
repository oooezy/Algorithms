/*
Title     : 1967. Number of Strings That Appear as Substrings in Word
URL       : https://leetcode.com/problems/number-of-strings-that-appear-as-substrings-in-word/
Author    : EUNJI LEE
Created   : 2022.02.15
*/

// Solution 1.
class Solution {
    func numOfStrings(_ patterns: [String], _ word: String) -> Int {
        return patterns.reduce(0) { $0 + (word.contains($1) ? 1: 0) }
    }
}

// Solution 2.
class Solution {
    func numOfStrings(_ patterns: [String], _ word: String) -> Int {
        return patterns.map{word.contains($0)}.filter{ $0 == true }.count
    }
}

// Solution 3. 
class Solution {
    func numOfStrings(_ patterns: [String], _ word: String) -> Int {
        var res = 0
       
        patterns.forEach {
            res += word.contains($0) ? 1 : 0
        }
        
        return res
    }
}
