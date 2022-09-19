/*
Title     : 크레인 인형뽑기 게임
URL       : https://school.programmers.co.kr/learn/courses/30/lessons/64061
Author    : EUNJI LEE
Created   : 2022.09.19
*/

// Solution 1.
import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board = board
    var basket: [Int] = []
    var count = 0
    
    for i in moves {
        for idx in 0..<board.count {
            if board[idx][i - 1] != 0 { 
                if basket.last == board[idx][i - 1] {
                    count += 2
                    basket.removeLast()
                } else {
                    basket.append(board[idx][i - 1])
                }
                
                board[idx][i - 1] = 0
                break
            }
        }
    }
    
    return count
}