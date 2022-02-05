/*
Title     : 2006. Count Number of Pairs With Absolute Difference K
URL       : https://leetcode.com/problems/count-number-of-pairs-with-absolute-difference-k/
Author    : EUNJI LEE
Created   : 2022.02.06
*/

// Solution 1.
class Solution {
    func countKDifference(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        
        for i in 0..<nums.count {
            for j in i..<nums.count {
                if i < j && abs(nums[i] - nums[j]) == k {
                    count += 1
                }
            }
        }
        
        return count
    }
}

// Solution 2.
class Solution {
    func countKDifference(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        
        for i in nums.indices {
            for j in nums.indices where i < j {
                if abs(nums[i] - nums[j]) == k {
                    count += 1
                }
            }
        }
        
        return count
    }
}