/*
Title     : 숫자 문자열과 영단어
URL       : https://programmers.co.kr/learn/courses/30/lessons/81301
Author    : EUNJI LEE
Created   : 2022.03.08
*/

// Solution 1.
import Foundation

func solution(_ s:String) -> Int {
    var answer: String = s
    answer = answer.replacingOccurrences(of: "zero", with: "0")
    answer = answer.replacingOccurrences(of: "one", with: "1")
    answer = answer.replacingOccurrences(of: "two", with: "2")
    answer = answer.replacingOccurrences(of: "three", with: "3")
    answer = answer.replacingOccurrences(of: "four", with: "4")
    answer = answer.replacingOccurrences(of: "five", with: "5")
    answer = answer.replacingOccurrences(of: "six", with: "6")
    answer = answer.replacingOccurrences(of: "seven", with: "7")
    answer = answer.replacingOccurrences(of: "eight", with: "8")
    answer = answer.replacingOccurrences(of: "nine", with: "9")
    answer = answer.replacingOccurrences(of: "ten", with: "10")

    return Int(answer)!
} 

// Solution 2.
import Foundation

func solution(_ s:String) -> Int {
    let number = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    var str: String = s
    
    for i in 0..<number.count {
        str = str.replacingOccurrences(of: number[i], with: String(i))
    }
    
    return Int(str)!
}