import Foundation

// ATM
func grid11399() -> Int{
    
    let n = Int(readLine()!)!
    var arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    
    var result = 0
    var tmp = 0
    
    for num in arr {
        tmp += num
        result += tmp
    }
    return result
}
