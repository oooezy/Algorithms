/*
Title     : 1450. Number of Students Doing Homework at a Given Time
URL       : https://leetcode.com/problems/number-of-students-doing-homework-at-a-given-time/
Author    : EUNJI LEE
Created   : 2022.02.21
*/

// Solution 1.
class Solution {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        var numberOfStudents = 0
        
        for i in 0..<startTime.count {
            if startTime[i] <= queryTime && endTime[i] >= queryTime {
                numberOfStudents += 1
            }
        }
        
        return numberOfStudents
    }
}