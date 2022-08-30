/*
Title     : 237. Delete Node in a Linked List
URL       : https://leetcode.com/problems/delete-node-in-a-linked-list/
Author    : EUNJI LEE
Created   : 2022.08.30
*/

// Solution 1.
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func deleteNode(_ node: ListNode?) {
        guard let node = node else { return }
        if let next = node.next {
            node.val = next.val
            node.next = next.next
        }
    }
}
