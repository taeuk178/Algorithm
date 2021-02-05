import Foundation

func grid5585(_ n: Int) -> Int{
    //var n = Int(readLine()!)!
    let en = [500,100,50,10,5,1]
    var count = 0
    var number = 1000 - n
    for i in en{
        count += number / i
        number %= i
    }
    
    return count
}
//print(grid5585(380))
