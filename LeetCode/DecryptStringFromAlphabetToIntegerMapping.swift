/*
Title     : 1309. Decrypt String from Alphabet to Integer Mapping
URL       : https://leetcode.com/problems/decrypt-string-from-alphabet-to-integer-mapping/
Author    : EUNJI LEE
Created   : 2022.02.28
*/

// Solution 1.
class Solution {
    func freqAlphabets(_ s: String) -> String {
        var map = 
        ["1" : "a","2" : "b","3" : "c","4" : "d","5" : "e","6" : "f","7" : "g","8" : "h","9" : "i","10#" : "j","11#" : "k", "12#" : "l", "13#" : "m", "14#" : "n", "15#" : "o", "16#" : "p", "17#" : "q", "18#" : "r", "19#" : "s", "20#" : "t", "21#" : "u","22#" : "v", "23#" : "w", "24#" : "x", "25#" : "y", "26#" : "z"]
        var res = ""
        var array = Array(s)
        var i = 0
        
        while i < array.count {
            if i + 2 < array.count && array[i + 2] == "#" {
                let key = String(array[i...i+2])
                res.append(map[key] ?? "")
                i += 3
            } else {
                res.append(map[String(array[i])] ?? "")
                i += 1
            }
        }
        return res
    }
}