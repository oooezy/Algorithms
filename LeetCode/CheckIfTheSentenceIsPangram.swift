/*
Title     : 1832. Check if the Sentence Is Pangram
URL       : https://leetcode.com/problems/check-if-the-sentence-is-pangram/
Author    : EUNJI LEE
Created   : 2022.02.12
*/

// Solution 1.
class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        return Set(sentence).count == 26
    }
}