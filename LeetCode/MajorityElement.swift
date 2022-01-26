/*
Title     : 169. Majority Element
URL       : https://leetcode.com/problems/majority-element/
Author    : EUNJI LEE
Created   : 2022.01.26
*/

// Solution 1.
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        return sorted[sorted.count / 2]
    }
}
