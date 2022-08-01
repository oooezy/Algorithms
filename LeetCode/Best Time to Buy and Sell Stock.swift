/*
Title     : 121. Best Time to Buy and Sell Stock
URL       : https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
Author    : EUNJI LEE
Created   : 2022.05.11
*/

// Solution 1.
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.isEmpty {
            return 0
        }

        var min = prices[0]
        var result = 0

        for i in prices {
            if i < min {
                min = i
            } else if (i - min) > result {
                result = i - min
            }
        }
        return result
    }
}

// Solution 2.
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var result = 0
        
        for price in prices {
            minPrice = min(minPrice, price)
            result = max(result, price - minPrice)
        }
        
        return result
    }
}