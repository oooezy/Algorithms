/*
Title     : 신고 결과 받기
URL       : https://programmers.co.kr/learn/courses/30/lessons/92334
Author    : EUNJI LEE
Created   : 2022.03.09
*/

// Solution 1.
import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reported: [String: Int] = [:] // [ 신고당한사람 : 신고횟수 ]
    var user: [String: [String]] = [:] // [ 신고한사람 : [신고당한사람] ]

    for r in Set(report) {
        let splited = r.split(separator: " ").compactMap { String($0) }
        let reportUser = splited[0]
        let reportedUser = splited[1]
        user[reportUser] = (user[reportUser] ?? []) + [reportedUser]
        reported[reportedUser] = (reported[reportedUser] ?? 0) + 1
    }

    return id_list.map { id in
        return (user[id] ?? []).reduce(0) {
            $0 + ((reported[$1] ?? 0) >= k ? 1 : 0)
        }
    }
}