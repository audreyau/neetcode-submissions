class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        # SOLUTION 1 - sort (less memory)
        # return sorted(s) == sorted(t)
        
        # SOLUTION 2 - hashmaps
        if len(s) != len(t):
            return False

        countS, countT = {}, {}
        # hashmaps: key-letter, value-count

        for i in range(len(s)):
            countS[s[i]] = 1 + countS.get(s[i], 0)
            countT[t[i]] = 1 + countT.get(t[i], 0)

        return countS == countT