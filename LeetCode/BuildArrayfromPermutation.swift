/*
Title     : 1920. Build Array from Permutation
URL       : https://leetcode.com/problems/build-array-from-permutation/
Author    : EUNJI LEE
Created   : 2022.01.27
*/

// Solution 1.
class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        var res = nums
        
        for i in nums {
            res[i] = nums[nums[i]]
        }
        
        return res
    }
}

