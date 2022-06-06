/*
Title     : 21. Merge Two Sorted Lists
URL       : https://leetcode.com/problems/merge-two-sorted-lists/
Author    : EUNJI LEE
Created   : 2022.06.06
*/

// Solution 1.
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil { return l2 }
        if l2 == nil { return l1 }
        
        if l1!.val < l2!.val {
            l1!.next = mergeTwoLists(l1!.next, l2)
            return l1
        } else {
            l2!.next = mergeTwoLists(l2!.next, l1)
            return l2
        }
    }
}