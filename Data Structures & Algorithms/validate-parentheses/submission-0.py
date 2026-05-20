class Solution:
    def isValid(self, s: str) -> bool:
        # Example 1:
        # Input: s = "[]"
        # Output: true
        
        # Example 2:
        # Input: s = "([{}])"
        # Output: true
        
        # Example 3:
        # Input: s = "[(])"
        # Output: false

        stack = []
        closeToOpen = {'}': '{', ')': '(', ']': '['}

        for c in s:
            if c in closeToOpen:
                if stack and stack[-1] == closeToOpen[c]:
                    stack.pop()
                else:
                    return False
                
            else: 
                stack.append(c)

        if stack:
            return False
        
        return True