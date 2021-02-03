import Foundation

public class Grid{
    public init(){}
    
    public func gridcoin(){
        var n = 1260
        var count = 0

        let coinTypes = [500, 100, 50, 10]

        for coin in coinTypes {
            count += n / coin
            print("count , \(n/coin)")
            n %= coin
            print("n: \(n)")
        }

        print(count)
    }
    //baekjoon
    public func grid11047() -> Int{
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
    public func atm11399() -> Int{
        
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

}
