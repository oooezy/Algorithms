/*
Title     : 가장 큰 수
URL       : https://programmers.co.kr/learn/courses/30/lessons/42746
Author    : EUNJI LEE
Created   : 2022.03.01
*/

// Solution 1.
import Foundation

func solution(_ numbers: [Int]) -> String {
    let sortedNumbers = numbers.sorted {
        Int("\($0)\($1)")! > Int("\($1)\($0)")!
    }
    
    let res = sortedNumbers.map { String($0) }.reduce("") { $0 + $1 }
    return sortedNumbers[0] == 0 ? "0" : res
}