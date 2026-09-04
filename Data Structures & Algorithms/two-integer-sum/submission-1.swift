class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // nums = [3,4,5,6], target = 7
        // Output: [0,1]

        // stay on n, iterate rest
        // target - n = rest?
        // return those values

        var prevValues: [Int: Int] = [:]

        // populate hashmap
        for (index, num) in nums.enumerated() {
            let diff = target - num

            if let exists = prevValues[diff] {
                return [exists, index]
            }

            prevValues[num] = index
        }

        return []
    }
}
