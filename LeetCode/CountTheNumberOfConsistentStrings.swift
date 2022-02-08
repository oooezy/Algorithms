/*
Title     : 1684. Count the Number of Consistent Strings
URL       : https://leetcode.com/problems/count-the-number-of-consistent-strings/
Author    : EUNJI LEE
Created   : 2022.02.08
*/

// Solution 1.
class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var count = 0
        
        for word in words {
            let wordsSet = Set(word)
            var pass = true
            
            for char in wordsSet {
                if !allowed.contains(char) {
                    pass = false
                    break
                }
            }
            
            if pass {
                count += 1
            }
        }
        
        return count
    }
}

// Solution 2.
class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var count = 0
        var set = Set(allowed)
        
        for word in words {
            for char in word {
                if !set.contains(char) {
                    count += 1
                    break
                }
            }
        }
        
        return words.count - count
    }
}

