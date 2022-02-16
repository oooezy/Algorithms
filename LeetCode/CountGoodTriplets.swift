/*
Title     : 1534. Count Good Triplets
URL       : https://leetcode.com/problems/count-good-triplets/
Author    : EUNJI LEE
Created   : 2022.02.16
*/

// Solution 1.
class Solution {
    func countGoodTriplets(_ arr: [Int], _ a: Int, _ b: Int, _ c: Int) -> Int {
        var res = 0
        let len = arr.count
        
        for i in 0..<len {
            for j in i+1..<len {
                for k in j+1..<len {
                    if abs(arr[i] - arr[j]) <= a && abs(arr[j] - arr[k]) <= b && abs(arr[i] - arr[k]) <= c {
                        res += 1
                    }
                }
            }
        }
        
        return res
    }
}