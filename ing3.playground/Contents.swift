import UIKit

func originalSolution(_ A: [Int]) -> Int {
    
    let N = A.count
    var result = 0
    for i in 0..<N {
        for j in 0..<N {
            if A[i] == A[j] {
                let x = abs(i - j)
                if x > result {
                    result = x
                }
            }
        }
    }
    
    return result
}

func mySolution(_ A: [Int]) -> Int {
    
    var result = 0
    
    for i in 0..<A.count {
        
        let number = A[i]
        if let j = A.firstIndex(of: number) {
            let x = abs(i - j)
            if x > result {
                result = x
            }
        }
    }
    
    return result
}

let testArray = [4, 6, 2, 2, 6, 6, 1]

let start1 = Date()
let result1 = originalSolution(testArray)
let end1 = Date()
let time1 = end1.timeIntervalSince(start1)
print("*** originalSolution = \(result1) time = \(time1)")

let start2 = Date()
let result2 = mySolution(testArray)
let end2 = Date()
let time2 = end2.timeIntervalSince(start2)
print("*** mySolution = \(result2) time = \(time2)")

print("diff = \(time1 - time2), gained: \((time1 - time2) / time1 * 100)%")

/*
 int solution(NSMutableArray *A) {
     int N = [A count];
     int result = 0;
     for (int i = 0; i < N; i++) {
         
         NSNumber *number = A[i];
         int j = [A indexOfObject:number];
         int x = abs(i - j);
         if (x > result) {
             result = x;
         }
     }
     return result;
 }
 */
