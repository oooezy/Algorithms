/*
Title     : 1816. Truncate Sentence
URL       : https://leetcode.com/problems/truncate-sentence/
Author    : EUNJI LEE
Created   : 2022.02.14
*/

// Solution 1.
class Solution {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        var res = s.split(separator: " ")[0..<k]
        return res.joined(separator: " ")
    }
}