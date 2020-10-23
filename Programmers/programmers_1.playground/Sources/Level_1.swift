import Foundation

public class level_1{
    public init(){}
    
    public func solution(_ n: Int) -> Int{
        var count = 0
        if n == 0{
            return count
        }
        for i in 1...n{
            if n % i == 0{
                count += i
            }
            
        }
        return count
    }
    
    
}

