/*
Title     : K번째수
URL       : https://programmers.co.kr/learn/courses/30/lessons/42748
Author    : EUNJI LEE
Created   : 2022.03.01
*/

// Solution 1.
import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map {
        array[($0[0]-1)...($0[1]-1)].sorted()[$0[2]-1]
    }
}