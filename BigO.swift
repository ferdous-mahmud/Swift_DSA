// Big O notation of an algorithms practice
import Foundation

// O(n) 
func linearTime(_ arr: [String]) {
    let before = Date()

    for i in 0..<arr.count {
        if arr[i] == "nemo" {
            print("Found!")
        }
    }

    let after = Date()
    let component = Calendar.current.dateComponents([.nanosecond], from: before, to: after)
    let milliSeconds: Double = Double(component.nanosecond! / 1000000)
    print("Time Tooks: \(milliSeconds)")
}

let nemo = Array<String>(repeating: "", count: 10)
linearTime(nemo)


//O(1)
func constantTime(_ n: Int) -> Int {
    return n * n
}
print(constantTime(10))


// O(log n)
func logerithmicTime(_ N: Int) -> Void {
    var n = N
    while n > 1 {
        n = n / 2
        print(n)
    }
}
logerithmicTime(5)



// O(n ^ 2)
func nSquareTime(_ n: Int) -> Void {
    for i in 0..<n {
        for j in 0..<n {
            print("\(i) : \(j)")
        }
    }
}
nSquareTime(2)