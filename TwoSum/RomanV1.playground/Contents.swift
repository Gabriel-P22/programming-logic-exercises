import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for i in 0 ..< nums.count {
            let complement = target - nums[i]
            if dict.keys.contains(complement) && dict[complement] != i {
                return [i, dict[complement]!]
            }
            dict[nums[i]] = i
        }
        return []
    }
}
