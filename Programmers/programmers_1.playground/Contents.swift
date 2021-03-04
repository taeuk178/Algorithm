import UIKit





// so so
func solution118372(_ n: Int64) -> Int64{
    let strings = String(n)
    var count: [Int] = []
    var result = ""
    for i in strings{
        count.append(Int(String(i)) ?? 0)
    }
    count.sort(by: >)
    _ = count.map{ result = result + "\($0)"}
    
    let tt = Int(result)
    
    return Int64(tt!)
}

//print(solution118372(118372))
/*
 문자열에도 sort가능
 func solution(_ n:Int64) -> Int {
     return Int(String(String(n).sorted(by: >)))!
 }
*/





// 두개 뽑아서 더하기
func solution(_ numbers:[Int]) -> [Int] {
    
    var sorted = numbers.sorted{$0 < $1}
    var setNums = Set<Int>()
    var answer = [Int]()
    
    for i in 0..<sorted.count-1 {
        for j in i+1..<sorted.count {
            setNums.insert(sorted[i] + sorted[j])
        }
    }
    
    for num in setNums {
        answer.append(num)
    }
    answer.sort()
    
    return answer
}
print(solution([2,1,3,4,1]))



func tailfactorial(_ n: Int) -> Int {
    //      시간초과
    //    if n == 1 || n == 0 {
    //        return n
    //    }
    //    return (tailfactorial(n - 1) + tailfactorial(n - 2) % 1234567)
    var fibonacci: [Int] = [0, 1]
    
    for i in 2...n {
        fibonacci.append((fibonacci[i-2] + fibonacci[i-1]) % 1234567)
        print(i)
    }
    
    return fibonacci[n]
}
//print(tailfactorial(2))

func solutions(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    let arr1Array = arr1.map{ (String(repeating: "0", count: n - String($0, radix: 2).count) + String($0, radix: 2))}
    let arr2Array = arr2.map{ (String(repeating: "0", count: n - String($0, radix: 2).count) + String($0, radix: 2))}
    print(arr1Array)
    return zip(arr1Array, arr2Array).map{ String(zip($0, $1).map{($0 == "1" || $1 == "1") ? "#" : " "})}
}
//print(solutions(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28]))

let sort = Sort()
var arrays = [1,5,6,4,2]
//sort.selectionSort()
//sort.bubbleSort()
//sort.insertionSort(array: arrays)
//sort.heapSort(&arrays)
sort.split(data: arrays)

let level1 = level_1()

level1.solution1(10)
level1.solution2("pYy")
level1.solution3("-123")
level1.solution4("1234")
level1.solution5(99999)
level1.solution6(["jane","Kim"])
level1.solution7(5)
level1.solution8(2, 5)
level1.solution9("Zbcdefg")
level1.solution10([2,5,7,10], 5)
level1.solution11("ab", 1)
level1.solution12([3,4,5])


let level2 = Level_2()

level2.solution1(5)


