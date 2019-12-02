import UIKit

var data = [5, 4, 0, 3, 1, 6, 2]

func solution(_ A : inout [Int]) -> Int {
    
    guard A.count > 1 else {return 0}
        
    var necklaces = [[Int]]()
    necklaces.append([Int]())
    var necklaceIndex = 0
    
    var beadIndex = 0
    var _beadIndex = 0
    while beadIndex < A.count {
        
        var beadFound = false
        let currentBead = A[beadIndex]
        for _necklaceIndex in 0..<necklaces.count {
            let _necklace = necklaces[_necklaceIndex]
            if _necklace.contains(currentBead) {
                beadFound = true
                break
            }
        }
        
        if beadFound {
            _beadIndex += 1
            beadIndex = _beadIndex
            if necklaces[necklaceIndex].count > 0 {
                necklaceIndex += 1
                necklaces.append([Int]())
            }
        }
        else {
            necklaces[necklaceIndex].append(currentBead)
            beadIndex = currentBead
        }
    }
    
    var maxCount = 0
    for i in 0..<necklaces.count {
        let currentCount = necklaces[i].count
        if currentCount > maxCount {
            maxCount = currentCount
        }
    }
    
    print("*** necklaces: \(necklaces)")
    
    return maxCount
}

print("*** result = \(solution(&data))")
