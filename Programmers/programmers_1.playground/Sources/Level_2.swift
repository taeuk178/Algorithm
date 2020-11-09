import Foundation

public class Level_2{
    public init(){}
    
    public func solution1(_ n: Int) -> Int{
        var fibonacci: [Int] = [0, 1]
        
        for i in 2...n {
            fibonacci.append((fibonacci[i-2] + fibonacci[i-1]) % 1234567)
            print(i)
        }
        
        return fibonacci[n]
    }
}
