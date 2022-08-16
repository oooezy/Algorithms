/*
Title     : 543. Diameter of Binary Tree
URL       : https://leetcode.com/problems/diameter-of-binary-tree/
Author    : EUNJI LEE
Created   : 2022.08.16
*/

// Solution 1.
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

class Solution {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var res = 0, depth = 0
        
        func getDepth(root: TreeNode?) -> Int {
            if root == nil { return 0 }
            
            let left = getDepth(root: root?.left)
            let right = getDepth(root: root?.right)
            
            depth = max(depth, left + right)
            return max(left, right) + 1
        }
        getDepth(root: root)
        return depth
    }
}
