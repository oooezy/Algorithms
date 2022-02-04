/*
Title     : 1389. Create Target Array in the Given Order
URL       : https://leetcode.com/problems/create-target-array-in-the-given-order/
Author    : EUNJI LEE
Created   : 2022.02.05
*/

// Solution 1.
class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var res: [Int] = []

        for i in 0..<nums.count {
            res.insert(nums[i], at: index[i])
        }
        
        return res
    }
}
    
    