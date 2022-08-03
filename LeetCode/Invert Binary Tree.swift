/*
Title     : 226. Invert Binary Tree
URL       : https://leetcode.com/problems/invert-binary-tree/
Author    : EUNJI LEE
Created   : 2022.08.04
*/

// Solution 1.
class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        var queue: [TreeNode] = [root]
        
        while !queue.isEmpty {
            for _ in queue {
                let node = queue.removeFirst()
                swap(&node.left, &node.right)
                
                if let leftNode = node.left { 
                    queue.append(leftNode) 
                }
                
                if let rightNode = node.right { 
                    queue.append(rightNode) 
                }
            }
        }
        
        return root
    }
}

// Solution 2.
class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        
        (root.left, root.right) = (root.right, root.left)
        
        invertTree(root.left)
        invertTree(root.right)
        
        return root
    }
}