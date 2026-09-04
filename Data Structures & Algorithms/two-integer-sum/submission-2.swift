class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
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
