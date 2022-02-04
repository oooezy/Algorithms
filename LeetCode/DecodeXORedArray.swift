/*
Title     : 1720. Decode XORed Array
URL       : https://leetcode.com/problems/decode-xored-array/
Author    : EUNJI LEE
Created   : 2022.02.05
*/

// Solution 1.
class Solution {
    func decode(_ encoded: [Int], _ first: Int) -> [Int] {
        var arr = [first]
        
        encoded.forEach {
            arr.append(arr.last! ^ $0)
        }
        
        return arr
    }
}