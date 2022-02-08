/*
Title     : 771. Jewels and Stones
URL       : https://leetcode.com/problems/jewels-and-stones/
Author    : EUNJI LEE
Created   : 2022.02.09
*/

// Solution 1.
class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        return stones.filter({ jewels.contains($0) }).count
    }
}
