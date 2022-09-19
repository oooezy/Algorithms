/*
Title     : [1차] 다트 게임
URL       : https://school.programmers.co.kr/learn/courses/30/lessons/17682
Author    : EUNJI LEE
Created   : 2022.09.19
*/

// Solution 1.
func solution(_ dartResult:String) -> Int {
  var temp = ""
  var splitResult: [String] = []
  var scores: [Int] = []
  
    for word in dartResult {
        if Int(String(word)) == nil {
            if word == "*" || word == "#" {
                splitResult[splitResult.count - 1] += String(word)
            } else { 
            temp += String(word)
            splitResult.append(temp)
            temp = ""
        }
        } else { 
            temp += String(word)
        }
    }
  
    for i in 0..<splitResult.count {
        var number = ""
        
        for j in splitResult[i] {
            if Int(String(j)) == nil { 
                switch j {
                    case "S":
                        scores.append(Int(number)! * 1)
                    case "D":
                        scores.append(Int(number)! * Int(number)!)
                    case"T":
                        scores.append(Int(number)! * Int(number)! * Int(number)!)
                    case "*":
                        scores[scores.count - 1] *= 2
                        if i > 0 {
                            scores[scores.count - 2] *= 2
                        }
                    case "#":
                        scores[scores.count - 1] *= -1
                    default:
                        break
                }
            } else {
                number += String(j)
            }
        }
    }
  
   
  return scores.reduce(0, +)
}