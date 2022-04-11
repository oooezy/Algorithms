/*
Title     : 1. Two Sum
URL       : https://leetcode.com/problems/two-sum/
Author    : EUNJI LEE
Created   : 2022.01.24
*/

// Solution 1.
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    } 
}

// Solution 2.
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for i in 0..<nums.count {
            if let comp = dict[target - nums[i]] {
                return [comp, i]
            } else {
                dict[nums[i]] = i
            }
        }
        
        return []
    }
}