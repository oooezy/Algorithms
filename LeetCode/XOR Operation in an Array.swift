/*
Title     : 1486. XOR Operation in an Array
URL       : https://leetcode.com/problems/xor-operation-in-an-array/
Author    : EUNJI LEE
Created   : 2022.08.23
*/

// Solution 1.
class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var result = 0
        
        for i in 0..<n {
            result ^= start + 2*i
        }
        
        return result
    }
}
