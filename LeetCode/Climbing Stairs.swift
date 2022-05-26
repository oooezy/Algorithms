/*
Title     : 70. Climbing Stairs
URL       : https://leetcode.com/problems/climbing-stairs/
Author    : EUNJI LEE
Created   : 2022.05.26
*/

// Solution 1.
class Solution {
    func climbStairs(_ n: Int) -> Int {
        
        if n == 1 || n == 0 { return 1 }
        
        var dp: [Int] = Array(repeating: 0, count: n + 1)
        
        dp[0] = 1
        dp[1] = 1
        
        for i in 2...n {
            dp[i] = dp[i - 1] + dp[i - 2]
        }
        
        return dp[n]
    }
}
