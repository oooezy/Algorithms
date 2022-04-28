/*
Title     : 스킬트리
URL       : https://programmers.co.kr/learn/courses/30/lessons/49993
Author    : EUNJI LEE
Created   : 2022.04.28
*/

// Solution 1.
import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var result: Int = 0
    
    skill_trees.forEach { skillTrees in
        let list = skillTrees.filter { skill.contains($0)}
        if skill.starts(with: list) {
            result += 1
        }
    }
    
    return result
}