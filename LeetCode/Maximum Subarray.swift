/*
Title     : 53. Maximum Subarray
URL       : https://leetcode.com/problems/maximum-subarray/
Author    : EUNJI LEE
Created   : 2022.08.06
*/

// Solution 1.
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = nums[0]
        var curSum = nums[0]
        
        for i in 1..<nums.count {
            curSum = max(nums[i], curSum + nums[i])
            maxSum = max(curSum, maxSum)
        }
        
        return maxSum
    }
}
