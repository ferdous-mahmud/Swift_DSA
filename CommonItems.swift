func commonItemFinder(_ A: [Int], _ B: [Int]) -> Bool {
    for i in 0..<A.count {
        for j in 0..<B.count {
            if A[i] == B[j]{
                return true
            }
        }
    }
    return false
}

print(commonItemFinder([1, 2, 4, 6], [9, 5, 3, 2]))

func commonItemFinderHashMap(_ A: [Int], _ B: [Int]) -> Bool {
    var hashMap = [Int: Bool]()
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

print(commonItemFinderHashMap([1, 2, 4, 6], [9, 5, 3, 2]))