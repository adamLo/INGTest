import UIKit

public func solution(_ A : Int, _ B : Int) -> Int {
    
    var foundPairs = 0
    
    for number in A...B {
        for probe in 2..<number {
            if number == (probe * (probe + 1)) {
                foundPairs += 1
            }
        }
    }
    
    return foundPairs
}

print("*** solution of (6,20) = \(solution(6,20))")
print("*** solution of (21,29) = \(solution(21,29))")
