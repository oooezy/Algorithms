/*
Title     : 최소직사각형
URL       : https://programmers.co.kr/learn/courses/30/lessons/86491
Author    : EUNJI LEE
Created   : 2022.04.11
*/

// Solution 1.
import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var width = [Int](), height = [Int]()
    
    for i in sizes {
        let w = i[0], h = i[1]
        
        if w > h {
            width.append(w)
            height.append(h)
        } else {
            width.append(h)
            height.append(w)
        }
    }
    
    return width.max()! * height.max()!
}