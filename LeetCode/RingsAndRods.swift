/*
Title     : 2103. Rings and Rods
URL       : https://leetcode.com/problems/rings-and-rods/
Author    : EUNJI LEE
Created   : 2022.02.12
*/

// Solution 1.
class Solution {
    func countPoints(_ rings: String) -> Int {
        if rings.isEmpty { return 0 }
        
        var count = 0
        
        for i in 0..<10 {
            if rings.contains("B\(i)") && rings.contains("R\(i)") && rings.contains("G\(i)") {
                count += 1
            }
        }
        
        return count
    }
}
