/*
Title     : 557. Reverse Words in a String III
URL       : https://leetcode.com/problems/reverse-words-in-a-string-iii/
Author    : EUNJI LEE
Created   : 2022.02.19
*/

// Solution 1.
class Solution {
    func reverseWords(_ s: String) -> String {
        return s.components(separatedBy: " ")
                .map { String($0.reversed()) }
                .joined(separator: " ")
    }
}
