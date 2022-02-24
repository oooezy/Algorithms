/*
Title     : 412. Fizz Buzz
URL       : https://leetcode.com/problems/fizz-buzz/
Author    : EUNJI LEE
Created   : 2022.02.24
*/

// Solution 1.
class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var res: [String] = []
        
        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0 {
                res.append("FizzBuzz")
            } else if i % 3 == 0 {
                res.append("Fizz")
            } else if i % 5 == 0 {
                res.append("Buzz")
            } else {
                res.append(String(i))
            }
        }
        
        return res
    }
}