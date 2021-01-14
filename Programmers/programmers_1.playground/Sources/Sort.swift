import Foundation

public class Sort{
    public init() {}
    
    public func selectionSort(){
        var arr = [2,6,4,3,9,5,8,1]
        
        for i in 0..<arr.count{
            var min: Int = arr[i]
            var location: Int = i
            for j in i+1..<arr.count{
                if (min > arr[j]){
                    min = arr[j]
                    location = j
                }
            }
            if i != location{
                arr.swapAt(i, location)
            }
        }
        for i in 0..<arr.count{
            print(arr[i])
        }
    }
}
