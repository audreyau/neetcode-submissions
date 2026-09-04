class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        // make sure strings are same length
        guard s.count == t.count else { 
            return false 
        }
        
        var charCounts: [Character: Int] = [:]
        
        // count up for string s
        for c in s {
            charCounts[c, default: 0] += 1
        }
        
        // count down for string t
        for c in t {
            guard let count = charCounts[c], count > 0 else {
                // character doesn't exist or is used too many times
                return false
            }
            
            charCounts[c] = count - 1
        }
        
        return true
    }
}
