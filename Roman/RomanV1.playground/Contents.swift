import Foundation

class Solution {
    func romanToInt(_ s: String) -> Int {
        let roman = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        var n = s.count - 1
        var arr = s.map { String($0) }
        var prev = 0
        var value = 0

        while n >= 0 {
            guard let current = roman[arr[n]] else {
                return value
            }

            if prev > current && prev > 0 {
                value = value - current
            } else {
                value = value + current
            }
            prev = current
            n -= 1
        }

        return value
    }
}
