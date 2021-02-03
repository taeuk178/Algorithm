//
//  main.swift
//  BaekJoon
//
//  Created by taeuk on 2021/02/02.
//

import Foundation


let input = readLine() ?? ""
let a = Int(input) ?? 0

let inputtwo = readLine() ?? ""
let b = Int(inputtwo) ?? 0

print(a*(b%10))
print(a*(b%100-b%10)/10)
print(a*(b/100))
print(a*b)



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
