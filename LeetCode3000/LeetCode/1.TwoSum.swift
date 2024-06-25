import Foundation

class Solution {
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var numIndexMap = [Int: Int]()
    
    for (index, num) in nums.enumerated() {
        let complement = target - num
        if let complementIndex = numIndexMap[complement] {
            return [complementIndex, index]
        }
        numIndexMap[num] = index
    }
    
    // No valid solution according to the problem statement
    return []
}
}


