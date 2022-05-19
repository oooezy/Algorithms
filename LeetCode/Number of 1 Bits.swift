/*
Title     : 191. Number of 1 Bits
URL       : https://leetcode.com/problems/number-of-1-bits/
Author    : EUNJI LEE
Created   : 2022.05.19
*/

// Solution 1.
class Solution {
    func hammingWeight(_ n: Int) -> Int {
        let binary = String(n, radix: 2)
        return binary.filter { $0 == "1" }.count
    }
}

// Solution 2.
class Solution {
    func hammingWeight(_ n: Int) -> Int {
        return n.nonzeroBitCount
    }
}