/*
Title     : 733. Flood Fill
URL       : https://leetcode.com/problems/flood-fill/
Author    : EUNJI LEE
Created   : 2022.08.06
*/

// Solution 1.
class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        let oldColor = image[sr][sc]
        if oldColor == newColor { return image }
        
        var result = image
        dfs(&result, sr, sc, oldColor, newColor)
        
        return result
    }
    
    func dfs(_ image: inout [[Int]], _ row: Int, _ col: Int, _ oldColor: Int, _ newColor: Int) {
        if row < 0 || row >= image.count || col < 0 || col >= image[0].count { return }
        if image[row][col] != oldColor { return }
        
        image[row][col] = newColor
        
        dfs(&image, row - 1, col, oldColor, newColor)
        dfs(&image, row + 1, col, oldColor, newColor)
        dfs(&image, row, col - 1, oldColor, newColor)
        dfs(&image, row, col + 1, oldColor, newColor)
    }
}