/*
Title     : 1436. Destination City
URL       : https://leetcode.com/problems/destination-city/
Author    : EUNJI LEE
Created   : 2022.02.19
*/

// Solution 1.
class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var dic: [String : String] = [:]
        
        for path in paths {
            dic[path[0]] = path[1]
        }
        
        for val in dic.values {
            if dic[val] == nil {
                return val
            }
        }
        
        return ""
    }
}

// Solution 2.
class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var cities = Set<String>()
        
        for path in paths {
            cities.insert(path[1])
        }
        
        for path in paths {
            let city = path[0]
            
            if cities.contains(city) {
                cities.remove(city)
            }
        }
        
        return cities.removeFirst() ?? ""
    }
}
