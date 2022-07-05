/*
Title     : 268. Missing Number
URL       : https://leetcode.com/problems/missing-number/
Author    : EUNJI LEE
Created   : 2022.07.05
*/

// Solution 1.
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var arr = Array(repeating: false, count: nums.count + 1)

        for i in nums {
            arr[i] = true
        }

        if let index = arr.firstIndex(of: false) {
            return index
        }

        return 0
    }
}