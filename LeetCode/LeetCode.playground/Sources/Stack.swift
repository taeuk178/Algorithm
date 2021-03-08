import Foundation
/* 시간 효율적 68ms
 class MinStack {

     private var values = [Int]()
     private var auxiliaryValues = [Int]()
     
     /** initialize your data structure here. */
     public init() {}
     
     public func push(_ x: Int) {
         values.append(x)
         
         if let lastAuxiliary = auxiliaryValues.last {
             if x < lastAuxiliary {
                 auxiliaryValues.append(x)
             } else {
                 auxiliaryValues.append(lastAuxiliary)
             }
         } else {
             auxiliaryValues.append(x)
         }
     }
     
     public func pop() {
         _ = values.popLast()
         _ = auxiliaryValues.popLast()
     }
     
     public func top() -> Int {
         guard let last = values.last else { return -1 }
         return last
     }
     
     public func getMin() -> Int {
         guard let lastAuxiliary = auxiliaryValues.last else { return -1 }
         return lastAuxiliary
     }
 }
 */

// 4164ms
class MinStack {

    /** initialize your data structure here. */
    var stackArr: [Int] = []
    
    init() {
        
    }
    
    func push(_ x: Int) {
        stackArr.append(x)
    }
    
    func pop() {
        if stackArr.isEmpty{
            return
        }
        stackArr.removeLast()
    }
    
    func top() -> Int? {
        if stackArr.count > 0{
            return stackArr[stackArr.count - 1]
        }else{
            return nil
        }
    }
    
    func getMin() -> Int {
        return stackArr.min() ?? 0
    }
}
