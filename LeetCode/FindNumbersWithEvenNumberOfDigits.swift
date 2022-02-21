/*
Title     : 1295. Find Numbers with Even Number of Digits
URL       : https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
Author    : EUNJI LEE
Created   : 2022.02.21
*/

// Solution 1.
cclass Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        return nums.filter { String($0).count % 2 == 0 }.count
    }
}