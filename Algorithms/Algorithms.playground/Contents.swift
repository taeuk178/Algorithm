import UIKit
//
//let grid = Grid()
//
//func physical(_ n: Int, _ lost: [Int], _ reserve: [Int]) -> Int{
//
//    var count = 0
//
//    for i in 1...n{
//        var tt = lost.filter{$0 == i}
//        print(tt)
//
//
//    }
//    return 0
//}
//print(physical(5, [2,4], [1,3,5]))
//
//let sort = Sorts()
//var arrays = [1,5,6,4,2]
////sort.selectionSort()
////sort.bubbleSort()
////sort.insertionSort(array: arrays)
////sort.heapSort(&arrays)
//sort.split(data: arrays)
//func gridcoin(){
//    var n = 1260
//    var count = 0
//
//    let coinTypes = [500, 100, 50, 10]
//
//    for coin in coinTypes {
//        count += n / coin
//        print("count , \(n/coin)")
//        n %= coin
//        print("n: \(n)")
//    }
//
//    print(count)
//}

func atm11399() -> Int{
    
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
print(atm11399())

