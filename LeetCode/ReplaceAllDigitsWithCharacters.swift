/*
Title     : 1844. Replace All Digits with Characters
URL       : https://leetcode.com/problems/replace-all-digits-with-characters/
Author    : EUNJI LEE
Created   : 2022.02.15
*/

// Solution 1.
class Solution {
    func replaceDigits(_ s: String) -> String {
        var res = ""
        var lastChar = s.first!.asciiValue! //a의 asciiValue = 97
        
        s.forEach {
            if("a"..."z").contains($0) {
                res += String($0)
                lastChar = $0.asciiValue! // 97               
            } else {
                res += String(Character(UnicodeScalar(lastChar + UInt8(String($0))!)))
            }
        }
        
        return res
    }
}
