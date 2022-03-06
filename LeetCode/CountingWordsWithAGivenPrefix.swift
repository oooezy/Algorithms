/*
Title     : 2185. Counting Words With a Given Prefix
URL       : https://leetcode.com/problems/counting-words-with-a-given-prefix/
Author    : EUNJI LEE
Created   : 2022.03.06
*/

// Solution 1.
class Solution {
    func prefixCount(_ words: [String], _ pref: String) -> Int {
         return words.filter{ $0.hasPrefix(pref) }.count
    }
}