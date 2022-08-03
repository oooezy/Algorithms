/*
Title     : 704. Binary Search
URL       : https://leetcode.com/problems/binary-search/
Author    : EUNJI LEE
Created   : 2022.08.04
*/

// Solution 1.
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1
        
        while left <= right {
            let mid = (left + right) / 2
            
            if nums[mid] == target { return mid }
            if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return -1
    }
}