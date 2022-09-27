func commonItemFinder(_ A: [Int], _ B: [Int]) -> Bool {
    for i in 0..<A.count {
       for j in 0..<B.count {
         if A[i] == B[j] {
            return true
         }
       }
    }
    return false
}

print(commonItemFinder([1, 2, 4, 6], [9, 5, 3, 2]))
print(commonItemFinder([0, 1, 2, 3, 4], [5, 6, 7, 8]))


// Time - O(n + n) = O(2n) = O(n)
// Space - O(n) // n = Smallest array size

func commonItemFinderHashMap(_ A: [Int], _ B: [Int]) -> Bool {
    var hashMap = [Int: Bool]()
    var result = false

    if A.count > B.count {
        result = findElement(B, A)
    } else {
        result = findElement(A, B)
    }
    
    func findElement(_ a: [Int], _ b: [Int]) -> Bool {
        for a in A {
            hashMap[a] = true
        }

        for b in B {
            if hashMap[b] == true {
                return true
            }
        }
        return false
    }
    return result
}

print(commonItemFinderHashMap([1, 2, 4, 6], [9, 5, 3, 2]))
print(commonItemFinder([0, 1, 2, 3, 4], [5, 6, 7, 8]))