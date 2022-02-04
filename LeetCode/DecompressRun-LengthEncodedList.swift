/*
Title     : 1313. Decompress Run-Length Encoded List
URL       : https://leetcode.com/problems/decompress-run-length-encoded-list/
Author    : EUNJI LEE
Created   : 2022.02.05
*/

// Solution 1.
class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var res: [Int] = []
        
        for i in stride(from: 0, to: nums.count-1, by: 2) {
            for j in 0..<nums[i] {
                res.append(nums[i+1])
            }
        }
        
        return res
    }
}


