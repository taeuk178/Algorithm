import UIKit

let grid = Grid()

func physical(_ n: Int, _ lost: [Int], _ reserve: [Int]) -> Int{
    
    var count = 0
    
    for i in 1...n{
        var tt = lost.filter{$0 == i}
        print(tt)

        
    }
    return 0
}
print(physical(5, [2,4], [1,3,5]))

let sort = Sorts()
var arrays = [1,5,6,4,2]
//sort.selectionSort()
//sort.bubbleSort()
//sort.insertionSort(array: arrays)
//sort.heapSort(&arrays)
sort.split(data: arrays)
