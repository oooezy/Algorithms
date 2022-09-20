/*
Title     : 문자열 압축
URL       : https://school.programmers.co.kr/learn/courses/30/lessons/60057
Author    : EUNJI LEE
Created   : 2022.09.20
*/

// Solution 1.
import Foundation

func solution(_ s:String) -> Int {
    if s.count < 3 { return s.count }
    
    var result: Int = s.count
    
    for len in 1...s.count / 2 {
        let slicingStr = slicing(s, len)
        let compressedString = compress(slicingStr)
        let length = compressedString.count
        
        if length < result {
            result = length
        }
    }
    
    return result
}

func slicing(_ str: String, _ length: Int) -> [String] {
    var temp = ""
    var result: [String] = []
    
    for char in str {
        temp += String(char)
        if temp.count >= length {
            result.append(temp)
            temp = ""
        }
    }
    
    if temp != "" { 
        result.append(temp) 
    }
    
    return result
}

func compress(_ arr: [String]) -> String {
    var temp: String = ""
    var result: String = ""
    var count: Int = 0
    
    for str in arr {
        if temp == str {
        count += 1
        } else {
            if temp != "" {
                result += (count > 1) ? "\(count)\(temp)" : "\(temp)"
            }
            temp = str
            count = 1
        }
    }
        
    if temp != "" { result += (count > 1) ? "\(count)\(temp)" : "\(temp)" }
        
    return result
}
    