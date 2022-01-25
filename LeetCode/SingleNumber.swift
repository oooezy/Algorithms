/*
Title     : 136. Single Number
URL       : https://leetcode.com/problems/single-number/
Author    : EUNJI LEE
Created   : 2022.01.25
*/

// Solution 1.
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var res = 0
        
        for i in nums {
            res ^= i
        }
        return res
    }
}

// Solution 2.
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        return nums.reduce(0) { $0 ^ $1 }
    }
}