/*
Title     : 2089. Find Target Indices After Sorting Array
URL       : https://leetcode.com/problems/find-target-indices-after-sorting-array/
Author    : EUNJI LEE
Created   : 2022.02.09
*/

// Solution 1.
class Solution {
    func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
        var sorted = nums.sorted()
        var res: [Int] = []
        
        for i in 0..<sorted.count {
            if sorted[i] == target {
                res.append(i)
            }
        }
        
        return res
    }
}