/*
Title     : 신규 아이디 추천
URL       : https://school.programmers.co.kr/learn/courses/30/lessons/72410
Author    : EUNJI LEE
Created   : 2022.09.13
*/

// Solution 1.
import Foundation

func solution(_ new_id:String) -> String {
    var id = new_id
    
    //1
    id = id.lowercased()
    
    //2
    var newId = ""
    var special = ["_", "-", "."]
    id.forEach { (char) in
        if char.isLetter || char.isNumber || special.contains(String(char)) {
            newId.append(char)
        }
    }
    
    // 3
    while newId.contains("..") {
        newId = newId.replacingOccurrences(of: "..", with: ".")
    }
    
    //4
    newId = newId.trimmingCharacters(in: ["."])
    
    //5
    if newId.isEmpty {
        newId = "a"
    }
    
    //6
    if newId.count > 15 {
        newId = String(newId.prefix(15))
        if newId.last == "." {
            newId.removeLast()
        }
    }
    // 7
    if newId.count == 1 {
        newId = String(newId + newId + newId)
    } else if newId.count == 2 {
        newId = String(newId + String(newId.last!))
    }
    
    return newId
}