/*
Title     : 1108. Defanging an IP Address
URL       : https://leetcode.com/problems/defanging-an-ip-address/
Author    : EUNJI LEE
Created   : 2022.02.09
*/

// Solution 1.
class Solution {
    func defangIPaddr(_ address: String) -> String {
        return address.replacingOccurrences(of: ".", with: "[.]")
    }
}
