import Foundation

public class Array{
    //a[i] b[i] 비교
    public func compareArr(a: [Int], b: [Int]) -> [Int]{
        var aCount = 0
        var bCount = 0
        var countArr: [Int] = []
        for i in 0...a.count - 1{
            if a[i] > b[i]{
                aCount += 1
            }else if a[i] < b[i]{
                bCount += 1
            }else if a[i] == b[i]{
                
            }
        }
        countArr.append(aCount)
        countArr.append(bCount)
        return countArr
    }
    
    public func simpleArrSum(ar: [Int]) -> Int{
        
        // O(n)으로 통과가능함
    //    var count = 0
    //
    //    for i in ar{
    //        count += i
    //    }
        
        // reduce로 한 줄가능, 첫번째 매개변수는 초깃값
        // 0은 초깃값
        return ar.reduce(0, +)
    }
}