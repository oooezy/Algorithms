/*
Title     : 509. Fibonacci Number
URL       : https://leetcode.com/problems/fibonacci-number/
Author    : EUNJI LEE
Created   : 2022.02.22
*/

// Solution 1.
class Solution {
    func fib(_ n: Int) -> Int {
        if n <= 1 { return n }
        
        return fib(n - 1) + fib(n - 2)
    }
}