import Foundation

public class Factorial{
    // 팩토리얼
    public func factorial(_ n: Int) -> Int{
        print(n)
        if n == 1{
            return 1
        }
        return n * factorial( n - 1 )
    }
}
