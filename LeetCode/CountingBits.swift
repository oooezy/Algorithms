/*
Title     : 338. Counting Bits
URL       : https://leetcode.com/problems/counting-bits/
Author    : EUNJI LEE
Created   : 2022.02.26
*/

// Solution 1.
class Solution {
    func countBits(_ n: Int) -> [Int] {
        var count = [0, 1], i = 2
    
        if n == 0 { return [0] }
        
        while i <= n {
            let n1 = i >> 1
            let n2 = i % 2
            count.append(count[n1] + count[n2])
            i += 1
        }
        
        return count
    }
}