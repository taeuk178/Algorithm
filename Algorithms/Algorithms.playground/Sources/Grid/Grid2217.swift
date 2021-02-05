import Foundation

// 복
func grid2217() -> Int{
    let input = readLine() ?? ""
    let n = Int(input) ?? 0

    var ropes = [Int]()
    for _ in 0..<n{
        ropes.append(Int(readLine()!)!)
    }
    ropes = ropes.sorted()
        let strongestRope = ropes[n-1]
        var result = 0
        
        for (index,weakestRope) in ropes.enumerated(){
            if (weakestRope * (n-index)) > result {
                result = (weakestRope * (n - index))
            }
        }
        
        if result > strongestRope{
            return result
        }

        return strongestRope
}
