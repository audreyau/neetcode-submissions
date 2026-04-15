class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        '''
        Input: nums = [3,4,5,6], target = 7

        Output: [0,1]
        '''

        hashmap = {}

        for i, n in enumerate(nums):
            diff = target - n
            if diff in hashmap:
                return [hashmap[diff], i]

            hashmap[n] = i
        
        return []