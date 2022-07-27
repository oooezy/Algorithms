/*
Title     : 20. Valid Parentheses
URL       : https://leetcode.com/problems/valid-parentheses/
Author    : EUNJI LEE
Created   : 2022.07.27
*/

// Solution 1.
class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 {
            return false
        }
        
        var stack: [Character] = []

        for char in s {
            switch char {
                case "(", "[", "{": 
                    stack.append(char)
                case ")":
                    if stack.popLast() == "(" {
                        continue
                    } else {
                        return false
                    }
                case "]":
                    if stack.popLast() == "[" {
                        continue
                    } else {
                        return false
                    }
                case "}":
                    if stack.popLast() == "{" {
                        continue
                    } else {
                        return false
                    }
                default:
                    return false
            }
        }
    
        if stack.isEmpty {
            return true
        } else {
            return false
        }
        
    }
}

// Solution 2.
class Solution {
    func isValid(_ s: String) -> Bool {
        let str = s.map { $0 }
        let brackets: [Character:Character] = [")":"(","}":"{","]":"["]
        var stack: [Character] = []
        
        if str.count % 2 != 0 {
            return false
        }
        
        for char in str {
            if char == "(" || char == "[" || char == "{" {
                stack.append(char)
            } else {
                if stack.isEmpty {
                    return false
                }
                
                if stack.removeLast() != brackets[char] {
                    return false
                }
            }
        }
        
        return stack.isEmpty
    }
}