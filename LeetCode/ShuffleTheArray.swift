/*
Title     : 1470. Shuffle the Array
URL       : https://leetcode.com/problems/shuffle-the-array/
Author    : EUNJI LEE
Created   : 2022.02.01
*/

// Solution 1.
class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var res: [Int] = []
        
        for i in 0..<n {
            res.append(nums[i])
            res.append(nums[i + n])
        }
        
        return res
    }
}