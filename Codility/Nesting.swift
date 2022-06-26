/*
Title     : Nesting
URL       : https://app.codility.com/demo/results/training69KDWM-VFC/
Author    : EUNJI LEE
Created   : 2022.06.26
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ S : inout String) -> Int {
    var stack = [Character]()

    if S.count == 0 { return 1 }

    if S.count % 2 > 0 { return 0 }

    for element in Array(S) {
        switch element {
            case "(":
                stack.append(element)
            case ")":
                if stack.last == "(" { stack.removeLast() } else { return 0 }
            default: 
                break
        }
    }

    return stack.count > 0 ? 0 : 1
}