/*
Title     : 1281. Subtract the Product and Sum of Digits of an Integer
URL       : https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/
Author    : EUNJI LEE
Created   : 2022.08.30
*/

// Solution 1.
class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        let stringNums = String(n)
        var product = 1, sum = 0, res = 0
        
        for i in stringNums {
            sum = sum + Int(String(i))!
            product *= Int(String(i))!
        }
        
        res = product - sum
        return res
    }
}
