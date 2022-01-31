/*
Title     : 2114. Maximum Number of Words Found in Sentences
URL       : https://leetcode.com/problems/maximum-number-of-words-found-in-sentences/
Author    : EUNJI LEE
Created   : 2022.01.31
*/

// Solution 1.
class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        
        var max = 0
        
        sentences.forEach {
            let wordsCount = Array($0).split(separator: " ").count
            if wordsCount > max {
                max = wordsCount
            }
        }
        
        return max

    }
}