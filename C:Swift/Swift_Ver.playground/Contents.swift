import UIKit

// Q9
func fors(_ a: Int, _ b: Int) -> Int{
    var count = 0
    
    if a < b{
        for i in a...b{
            count += i
        }
    }else if a > b{
        for k in b...a{
            count += k
        }
    }
    return count
}
//print(fors(6, 3))

// Q11
func q11(_ a: Int) -> String{
    let counts = String(a).count
    
    return "그 수는 \(counts)자리입니다."
}
//print(q11(1333))


func q15(_ height: Int, _ width: Int) -> String{
    for _ in 1...height{
        for _ in 1...width{
            
            print("*", terminator: "")
        }
        print("\n")
    }
    return ""
}
//print(q15(3, 7))

//최솟값 구하기
func q1(_ a: [Int]) -> Int{
    //a[0] 값 하나받음
    var max = a[0]
    //a를 a[1] 부터 a.count 까지 돌림
    for i in a[1..<a.count]{
        // i 가 a[0]보다 크면 바꿈
        if i < max{
            max = i
        }
    }
    return max
}
//print(q1([3,1,4,7]))

//배열의 합계
func q2(_ a: [Int]) -> Int{
    var count = 0
    
    for i in a[0..<a.count]{
        count += i
    }
    return count
}
//print(q2([5,3,2,1]))

//평균값
func q3(_ a: [Int]) -> Int{
    var count = 0
    
    for i in a[0..<a.count]{
        count += i
        
    }
    count = count / a.count
    return count
}

// 배열 복사, 역순
func q8(_ b: [Int]) -> [Int]{
    var a: [Int] = []
    for i in b[0..<b.count]{
        a[0] = b[0]
    }
//    a.reverse()
    return a
}
print(q8([1,2,3,4,7]))
