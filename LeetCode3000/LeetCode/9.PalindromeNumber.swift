import Foundation
import UIKit

class PalindromeNumber {
    func isPalindrome(_ x: Int) -> Bool {
        // Handle negative numbers and numbers ending with zero but not zero itself
        if x < 0 || (x % 10 == 0 && x != 0) {
            return false
        }
        
        var reversedNumber = 0
        var originalNumber = x
        
        while originalNumber > reversedNumber {
            reversedNumber = reversedNumber * 10 + originalNumber % 10
            originalNumber /= 10
        }
        
        // When the length is an odd number, we can get rid of the middle digit by reversedNumber/10
        return originalNumber == reversedNumber || originalNumber == reversedNumber/10
    }
}

