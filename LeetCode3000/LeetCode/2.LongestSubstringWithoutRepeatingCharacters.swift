import Foundation
import UIKit

class LongestSubstringWithoutRepeatingCharacters {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var charIndexMap = [Character: Int]()
        var maxLength = 0
        var start = 0
        
        for (i, char) in s.enumerated() {
            if let lastSeenIndex = charIndexMap[char], lastSeenIndex >= start {
                start = lastSeenIndex + 1
            }
            charIndexMap[char] = i
            maxLength = max(maxLength, i - start + 1)
        }
        
        return maxLength
    }
}

let solution = LongestSubstringWithoutRepeatingCharacters()
let exp1 = solution.lengthOfLongestSubstring("pwwkew")
