/*
Title     : 1480. Running Sum of 1d Array
URL       : https://leetcode.com/problems/running-sum-of-1d-array/
Author    : EUNJI LEE
Created   : 2022.01.29
*/

// Solution 1.
class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var res: [Int] = []
        var sum = 0

        for i in nums {
              sum += i
              res.append(sum)
        }
        
        return res
    }
}