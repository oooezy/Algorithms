/*
Title     : 1512. Number of Good Pairs
URL       : https://leetcode.com/problems/number-of-good-pairs/
Author    : EUNJI LEE
Created   : 2022.02.02
*/

// Solution 1.
class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        
        var res = 0
        
        for i in 0..<nums.count {
            for j in i..<nums.count {
                if nums[i] == nums[j] && i < j {
                    res += 1
                }
            }
        }
        
        return res
        
    }
}