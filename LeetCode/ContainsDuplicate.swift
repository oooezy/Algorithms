/*
Title     : 217. Contains Duplicate
URL       : https://leetcode.com/problems/contains-duplicate/
Author    : EUNJI LEE
Created   : 2022.05.14
*/

// Solution 1.
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict = [Int:Int]()
        
        for num in nums {
            if dict[num] != nil {
                return true
            } else {
                dict[num] = 1
            }
        }
        return false
    }
}