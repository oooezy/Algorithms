/*
Title     : 주차 요금 계산
URL       : https://school.programmers.co.kr/learn/courses/30/lessons/92341
Author    : EUNJI LEE
Created   : 2022.09.20
*/

// Solution 1.
import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var timeInfo:[String:Int] = [:]
    var parkInfo:[String:Int] = [:]
    var feeInfo:[String:Int] = [:]
    let maxTime = 23 * 60 + 59
    
    calTimeByRecord(records, &parkInfo, &timeInfo)
    
    for (car, time) in parkInfo {
        if timeInfo[car] == nil {
            timeInfo[car] = maxTime - time
        } else {
            timeInfo[car]! += maxTime - time
        }
    }
    
    for (car, time) in timeInfo {
        feeInfo[car] = getTotalFee(time, fees)
    }
    
    return feeInfo.sorted{$0.key < $1.key}.map{ $0.value }
    
    
    return []
}

func calTimeByRecord(_ records:[String],_ parkInfo:inout [String:Int],_ timeInfo:inout [String:Int]) {
    for record in records {
        let split = record.split(separator: " ")
        let time = String(split[0])
        let car = String(split[1])
        let isIN = split[2] == "IN"
        if isIN {
            parkInfo[car] = changeTimeToMinutes(time)
        } else {
            let out = changeTimeToMinutes(time)
            let minutes = out - parkInfo[car]!
            if timeInfo[car] == nil {
                timeInfo[car] = minutes
            } else {
                timeInfo[car]! += minutes
            }
            parkInfo[car] = nil
        }
    }
}

func changeTimeToMinutes(_ time:String) -> Int {
    let split = time.split(separator: ":")
    let hours = Int(split[0])!
    let minutes = Int(split[1])!
    return (hours * 60) + minutes
}

func getTotalFee(_ minutes:Int,_ fees:[Int]) -> Int {
    let defaultTime = fees[0] // 기본 시간(분)
    let defaultFee = fees[1] // 기본 요금(원)
    let perTime = fees[2] // 단위 시간(분)
    let fee = fees[3] // 단위 요금(원)
    
    // 누적 주차 시간 <= 기본 시간 -> 기본 요금 청구
    if minutes <= defaultTime { return defaultFee } 

    let c = Int(ceil(Double((minutes - defaultTime))/Double(perTime)))
    let totalFee = defaultFee + c * fee
    
    return totalFee
}