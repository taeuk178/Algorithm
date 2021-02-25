import UIKit

func findMaxSum(_ numbers: [Int]) -> Int{
    var sum = 0
    var count = 0
    let arr = numbers
    
    
    for i in arr.sorted(by: >){
        sum += i
        count += 1
        if count >= 2{
            break
        }
    }
    return sum
}
print(findMaxSum([5,9,7,11]))


while arrcount.count <= 1{
    arrcount.append(arr2.max()!)
    arr2.removeLast()
}
