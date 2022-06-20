// Collection of same type of element positioned at specific index
// Get and Set data O(1)

var arr = [Int]()

arr.insert(10, at: 0)
arr.insert(20, at: 1)

arr.append(30)
arr.remove(at: 1)

for a in arr {
    print(a)
}