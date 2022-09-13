/*
Title     : 2798. 블랙잭
URL       : https://www.acmicpc.net/problem/2798
Author    : EUNJI LEE
Created   : 2022.09.13
*/

// Solution 1.
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let cards = readLine()!.split(separator: " ").map { Int($0)! }

print(blackJack(n, m, cards))
func blackJack(_ n: Int, _ m: Int, _ cards: [Int]) -> Int {
    var maxValue = 0
    for i in 0..<n {
        for j in i + 1..<n {
            for k in j + 1..<n {
                let sum = cards[i] + cards[j] + cards[k]
                if sum <= m && maxValue < sum {
                    maxValue = sum
                }
            }
        }
    }
    return maxValue
}