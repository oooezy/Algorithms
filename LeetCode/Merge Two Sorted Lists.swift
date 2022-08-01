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

// Solution 2.
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1
        var list2 = l2
        
        let head: ListNode = ListNode(0)
        var temp = head
        
        while list1 != nil && list2 != nil {
            if list1!.val > list2!.val {
                temp.next = list2!
                list2 = list2!.next
            } else {
                temp.next = list1!
                list1 = list1!.next
            }
            
            temp = temp.next!
        }
        
        temp.next = list1 ?? list2
        return head.next
    }
}