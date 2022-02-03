/*
Title     : 1365. How Many Numbers Are Smaller Than the Current Number
URL       : https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/
Author    : EUNJI LEE
Created   : 2022.02.03
*/

// Solution 1.
class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var res = [Int]()
        var count = 0
        
        for i in nums {
            for j in nums {
                if i > j {
                    count += 1
                }
            }
            res.append(count)
            count = 0
        }
        
        return res
    }
}
