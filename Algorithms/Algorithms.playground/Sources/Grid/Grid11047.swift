import Foundation

func grid11047() -> Int{
    let temp = readLine()!.split(separator: " ").map({Int($0)!})
    let n = temp[0]
    var k = temp[1]
    
    var coins = [Int]()
    var result: Int = 0
    for _ in 0..<n{
        coins.append(Int(readLine()!)!)
    }
    coins.reverse()
    for value in coins{
        if value <= k{
            result += (k / value)
            k = (k % value)
        }
        if k == 0{
            break
        }
    }
    return result
}
