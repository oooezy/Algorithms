/*
Title     : 14889. 스타트와 링크
URL       : https://www.acmicpc.net/problem/14889
Author    : EUNJI LEE
Created   : 2022.09.14
*/

// Solution 1.
let n = Int(readLine()!)!
var s = Array(repeating: Array(repeating: 0, count: n), count: n)
var visited = Array(repeating: false, count: n)

var team1 = 0, team2 = 0
var minValue = Int.max

for i in 0..<n {
    s[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}

func dfs(depth: Int, start: Int) {
    if depth == n / 2 {
        team1 = 0
        team2 = 0
        
        for i in 0..<n {
            for j in 0..<n {
                if !visited[i] && !visited[j] {
                    team2 += s[i][j]
                } 
                if visited[i] && visited[j] {
                    team1 += s[i][j]
                }
            }
        }
        
        minValue = min(minValue, abs(team1 - team2))
        return
    }
    
    for i in start..<n {
        if !visited[i] {
            visited[i] = true
            dfs(depth: depth + 1, start: i)
            visited[i] = false
        }
    }
}

dfs(depth: 0, start: 0)
print(minValue)