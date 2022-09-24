/*
Title     : 성격 유형 검사하기
URL       : https://school.programmers.co.kr/learn/courses/30/lessons/118666
Author    : EUNJI LEE
Created   : 2022.09.24
*/

// Solution 1.
import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var charDic: [Character: Int] = ["R": 0, "T": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A": 0, "N": 0]
    
    for i in 0..<survey.count {
        let char: [Character] = Array(survey[i])
        
        if choices[i] < 4 {
            charDic[char[0]]! += abs(4 - choices[i])
        } else {
            charDic[char[1]]! += abs(4 - choices[i])
        }
    }
    
    let RT = charDic["R"]! >= charDic["T"]! ? "R" : "T"
    let CF = charDic["C"]! >= charDic["F"]! ? "C" : "F"
    let JM = charDic["J"]! >= charDic["M"]! ? "J" : "M"
    let AN = charDic["A"]! >= charDic["N"]! ? "A" : "N"
    
    return RT + CF + JM + AN
}
