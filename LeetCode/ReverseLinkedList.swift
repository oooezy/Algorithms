/*
Title     : 206. Reverse Linked List
URL       : https://leetcode.com/problems/reverse-linked-list/
Author    : EUNJI LEE
Created   : 2022.07.09
*/

// Solution 1.
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head?.next == nil { return head }
        
        let newHead = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        
        return newHead
    }
}
