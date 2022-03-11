/*
Title     : 2016년
URL       : https://programmers.co.kr/learn/courses/30/lessons/12901
Author    : EUNJI LEE
Created   : 2022.03.12
*/

// Solution 1.
func solution(_ a:Int, _ b:Int) -> String {
    let day = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    let month = [ 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let sumOfDays = month[0..<a-1].reduce(0, +) + b
    
    return day[sumOfDays % 7]
}