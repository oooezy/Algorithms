/*
Title     : 1913. Maximum Product Difference Between Two Pairs
URL       : https://leetcode.com/problems/maximum-product-difference-between-two-pairs/
Author    : EUNJI LEE
Created   : 2022.02.09
*/

// Solution 1.
class Solution {
    func maxProductDifference(_ nums: [Int]) -> Int {
        let sorted = nums.sorted() 
        let len = sorted.count
        
        return (sorted[len - 2] * sorted[len - 1]) - (sorted[0] * sorted[1])
    }
}
