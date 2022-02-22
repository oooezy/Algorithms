/*
Title     : 문자열 내 p와 y의 개수
URL       : https://programmers.co.kr/learn/courses/30/lessons/12918
Author    : EUNJI LEE
Created   : 2022.02.22
*/

// Solution 1.
import Foundation

func solution(_ s:String) -> Bool{
    let str = s.lowercased()
    let p = str.filter{ $0 == "p" }
    let y = str.filter{ $0 == "y" }
    
    return p.count == y.count
}