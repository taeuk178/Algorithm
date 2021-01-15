import Foundation

public class Sort{
    public init() {}
    
    // 버블 정렬
    public func bubbleSort(){
        var numbers = [5,2,6,1]
        for _ in 0..<numbers.count {
            for j in 0..<numbers.count-1 {
                if numbers[j] > numbers[j+1] {
                    numbers.swapAt(j, j+1)
                }
            }
        }
        print(numbers)
    }
    
    
    // 선택 정렬
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
    
    // 삽입 정렬
    public func insertionSort(array: [Int]) -> [Int]{
        var a = array
        for i in 1..<a.count{
            var y = i
            while y > 0, a[y] < a[y-1]{
                a.swapAt(y, y-1)
                y -= 1
            }
        }
        print(a)
        return a
    }
    
    // 힙 정렬
    public func heapify<T : Comparable>(_ array: inout [T], _ i: Int, _ size: Int) {
        var largest = i
        let left = i * 2 + 1
        let right = i * 2 + 2
        
        if left < size && array[largest] < array[left] {
            largest = left
        }
        
        if right < size && array[largest] < array[right] {
            largest = right
        }
        
        if largest != i {
            swap(&array, largest, i)
            heapify(&array, largest, size)
        }
    }

    public func swap<T : Comparable>(_ array: inout [T] , _ i: Int, _ j: Int) {
        let temp = array[i]
        array[i] = array[j]
        array[j] = temp
    }

    public func buildHeap<T : Comparable>(_ array: inout [T]) {
        var i = array.count/2
        
        while i >= 0 {
            heapify(&array, i, array.count)
            i -= 1
        }
    }

    public func heapSort<T : Comparable>(_ array: inout [T]) -> [T] {
        buildHeap(&array)
        
        var size = array.count
        var i = size - 1
        
        while i >= 1 {
            swap(&array, i, 0)
            print("\(array)")
                
            i -= 1
            size -= 1
            
            heapify(&array, 0, size)
            
            print("\(array)")
        }
        
        return array
    }
    
    // 병합 정렬
    public func split(data: [Int]) -> [Int] {
        if data.count <= 1 { return data }     //#1
        
        let medium = Int(data.count / 2)    //#2
        
        let left = split(data: Array(data[0..<medium]))     //#3
        let right = split(data: Array(data[medium...]))
        
        return merge(left, right)    //#4
    }
    
    public func merge(_ left: [Int], _ right: [Int]) -> [Int] {
        var merged: [Int] = []    //#1
        var leftPoint = 0        //#2
        var rightPoint = 0
        
        //#3
        while left.count > leftPoint, right.count > rightPoint {
            if left[leftPoint] > right[rightPoint] {    //#4
                merged.append(right[rightPoint])
                rightPoint += 1
            }else {
                merged.append(left[leftPoint])
                leftPoint += 1
            }
        }
        
        //#5
        while left.count > leftPoint {
            merged.append(left[leftPoint])
            leftPoint += 1
        }
        
        while right.count > rightPoint {
            merged.append(right[rightPoint])
            rightPoint += 1
        }
        print(merged)
        return merged
    }
    
    // 퀵 정렬
    public func quickSort(array: [Int]) -> [Int] {
        
        if array.count < 2 { // 배열이 비어있거나 하나만 있는 경우는 이미 '정렬'
            return array
        } else {
            let pivot = array[0] // 피봇의 기준이 무엇이냐에 따라 정렬의 과정도 달라진다. 일단 첫번째(4)를 기준
            let less = array.filter { $0 < pivot } // 피봇을 기준으로 피봇보다 같거나 작은 수들을 less 에 담는다.
            let greater = array.filter { $0 > pivot} // 피봇을 기준으로 피봇보다 같거나 큰 수들을 greater 에 담는다.
            return quickSort(array: less) + [pivot] + quickSort(array: greater) // 위의 과정을 반복한다.
        }
    }
    
}
