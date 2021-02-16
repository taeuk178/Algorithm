//
//  main.swift
//  BaekJoon
//
//  Created by taeuk on 2021/02/02.
//

import Foundation

let strings = String(readLine() ?? "")
var count = 0

for i in strings{
    if i == "a"{
        count += 1
    }else if i == "e"{
        count += 1
    }else if i == "i"{
        count += 1
    }else if i == "o"{
        count += 1
    }else if i == "u"{
        count += 1
    }
}
print(count)
//let tt = input.filter{$0 == input.uppercased()}

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
