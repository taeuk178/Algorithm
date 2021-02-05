//
//  main.swift
//  BaekJoon
//
//  Created by taeuk on 2021/02/02.
//

import Foundation

func solution() -> Int{
    let input = readLine() ?? ""
    let n = Int(input) ?? 0

    var ropes = [Int]()
    for _ in 0..<n{
        ropes.append(Int(readLine()!)!)
    }
    ropes = ropes.sorted()
        let strongestRope = ropes[n-1]
        var result = 0
        
        for (index,weakestRope) in ropes.enumerated(){
            if (weakestRope * (n-index)) > result {
                result = (weakestRope * (n - index))
            }
        }
        
        if result > strongestRope{
            return result
        }

        return strongestRope
}
//print(solution())
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
print(grid14916())

//lopes = lopes.sorted()
//var tt = lopes.map{$0 * a}
//var temp = 0
//var count = 0
//for i in tt[0..<tt.count]{
//    temp = tt[0]
//    if i < temp{
//        temp = i
//    }
//}
//print(temp)

// star_1
//for i in 1...a{
//    for j in 1...i{
//        print("*", terminator: "")
//    }
//    print()
//}

// star_2
//for i in 1...a{
//    var result = ""
//    for _ in 1..<a-i+1{
//        result += " "
//    }
//    for _ in a-i+1...a{
//        result += "*"
//    }
//    print(result)
//}

// star_3
//for i in 1...a{
//    for _ in 1...a-i+1{
//        print("*", terminator: "")
//    }
//    print()
//}

// star_4
//for i in 1...a{
//    var result = ""
//    for _ in a-i+1..<a{
//        result += " "
//    }
//    for _ in 1...a-i+1{
//        result += "*"
//    }
//    print(result)
//}

// 배열 2577

//var N = 1
//var dic = [Int](repeating: 0, count: 10)
//(0..<3).forEach { _ in
//    N *= Int(readLine()!)!
//}
//
//while N > 0{
//    let rem = N % 10
//    dic[rem] += 1
//    N /= 10
//}
//dic.forEach { print($0) }
