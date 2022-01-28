/*
Title     : 1929. Concatenation of Array
URL       : https://leetcode.com/problems/concatenation-of-array/
Author    : EUNJI LEE
Created   : 2022.01.28
*/

// Solution 1.
class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        return nums + nums
    }
}

// Solution 2.
class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        let len = nums.count 
        var ans = Array(repeating: 0, count: len * 2)
        
        for i in 0..<len {
            ans[i] = nums[i]
            ans[i + len] = nums[i]
        }
        
        return ans
    }
}

