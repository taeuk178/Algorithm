import Foundation

func grid14916() -> Int{
    var n = Int(readLine()!)!
    var count = 0
    var o = n % 5
    if n == 1 || n == 3{
        count = -1
    }else if o % 2 == 0{
        count = n / 5 + o / 2
    }else{
        count = ((n / 5)-1) + ((o + 5)/2)
    }
    return count
}
