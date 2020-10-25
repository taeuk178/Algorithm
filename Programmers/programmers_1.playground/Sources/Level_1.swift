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
    //문자열 내 p와 y의 개수
    public func solution(_ s: String) -> Bool{
        // components, filter.count 가능
        var Pcounts = 0
        var Ycounts = 0
        let ans: Bool = false
        for i in s{
            if i == "P" || i == "p"{
                Pcounts = Pcounts + 1
            }else if i == "Y" || i == "y"{
                Ycounts = Ycounts + 1
            }
        }
        if Pcounts == Ycounts{
            return true
        }
        return ans
    }
    
}

