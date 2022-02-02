/*
Title     : 1431. Kids With the Greatest Number of Candies
URL       : https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/
Author    : EUNJI LEE
Created   : 2022.02.02
*/

// Solution 1.
class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let max = candies.max()!
        return candies.map { $0 + extraCandies >= max }
    }
}
