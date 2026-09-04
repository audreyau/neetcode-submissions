class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var mySet: Set<Int> = []

        for n in nums {
            if mySet.contains(n) {
                return true
            }
            mySet.insert(n)
        }

        return false
    }
}
