/*
Title     : 2037. Minimum Number of Moves to Seat Everyone
URL       : https://leetcode.com/problems/minimum-number-of-moves-to-seat-everyone/
Author    : EUNJI LEE
Created   : 2022.02.07
*/

// Solution 1.
class Solution {
    func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
        var sortedSeats = seats.sorted() // [1,3,5]
        var sortedStudents = students.sorted() // [2, 4, 7]
        var count = 0
        
        for i in 0..<seats.count {
            count += abs(sortedSeats[i] - sortedStudents[i])
        }
        
        return count 
    }
}
