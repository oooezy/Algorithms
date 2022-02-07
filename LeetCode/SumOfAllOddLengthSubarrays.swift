/*
Title     : 1588. Sum of All Odd Length Subarrays
URL       : https://leetcode.com/problems/sum-of-all-odd-length-subarrays/
Author    : EUNJI LEE
Created   : 2022.02.07
*/

// Solution 1.
class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var sum = 0
        
        for i in 0..<arr.count {
            for j in i..<arr.count {
                if (j - i) % 2 == 0 {
                    sum += arr[i...j].reduce(0, +)
                }
            }
        }
        
        return sum
    }
}
