/*
Title     : 오픈채팅방
URL       : https://programmers.co.kr/learn/courses/30/lessons/42888
Author    : EUNJI LEE
Created   : 2022.03.30
*/

// Solution 1.
import Foundation

func solution(_ record:[String]) -> [String] {
    var nickName: [String : String] = [:]
    var result: [String] = []
    
    for i in record {
        let arr = i.components(separatedBy: " ")
        
        if arr.count > 2 {
            nickName[arr[1]] = arr[2]
        }
    }
    
    for i in record {
        let arr = i.components(separatedBy: " ")

        let name = nickName[arr[1]]!
        
        if arr[0] == "Enter" {
            result.append("\(name)님이 들어왔습니다.")
        } else if arr[0] == "Leave" {
            result.append("\(name)님이 나갔습니다.")
        }
    }

    return result
}