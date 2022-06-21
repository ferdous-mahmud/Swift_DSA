import UIKit

/*
 Rotate array to right N times.
 https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
 
 For example, given

     A = [3, 8, 9, 7, 6]
     K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:

     [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
     [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
     [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
 
 Time Complexity: O(N^K)
 Space Complexity: O(N)

 */

func solution(A: [Int], K: Int) -> [Int] {
    
    // Negative and 0 rotation OR empty array
    if 0 >= K || A.isEmpty {
        return A
    }
    
    var result = [Int]()
    var temp = A
    let last = A.count - 1
    
    for i in 1...K {
        result.append(temp[last])
        for i in 0...last - 1 {
            result.append(temp[i])
        }
        temp = result
        if i != K {
            result.removeAll()
        }
    }
    
    return result
}

solution(A: [1, 2, 3, 4, 5], K: 0) // 1 2 3 4 5
solution(A: [1, 2, 3, 4, 5], K: 2) // 4 5 1 2 3
solution(A: [1, 2, 3, 4, 5], K: 3) // 3 4 5 1 2

solution(A: [3, 8, 9, 7, 6], K: 3) // [9, 7, 6, 3, 8]
solution(A: [], K: -3) // []

