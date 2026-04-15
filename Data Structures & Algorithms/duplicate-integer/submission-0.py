class Solution:
    def hasDuplicate(self, nums: List[int]) -> bool:
        # SOLUTION 1
        # return len(nums) > len(set(nums))

        # SOLUTION 2 - stop early
        hashset = set()

        for n in nums:
            if n in hashset:
                return True
            
            hashset.add(n)

        return False


        