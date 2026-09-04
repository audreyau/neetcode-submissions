class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var hashMap1: [Character: Int] = [:]
        var hashMap2: [Character: Int] = [:]

        for c1 in s {
            hashMap1[c1, default: 0] += 1
        }

        for c2 in t {
            hashMap2[c2, default: 0] += 1
        }

        return hashMap1 == hashMap2
           

    }
}
