/*
Title     : 1603. Design Parking System
URL       : https://leetcode.com/problems/design-parking-system/
Author    : EUNJI LEE
Created   : 2022.09.01
*/

// Solution 1.
class ParkingSystem {
    var big: Int, medium: Int, small: Int
    
    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.big = big
        self.medium = medium
        self.small = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        switch carType {
            case 1:
                big -= 1
                return big >= 0
            case 2: 
                medium -= 1
                return medium >= 0
            case 3:
                small -= 1
                return small >= 0
            default:
                return false
        }
    }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * let obj = ParkingSystem(big, medium, small)
 * let ret_1: Bool = obj.addCar(carType)
 */