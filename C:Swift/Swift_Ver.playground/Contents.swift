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
print(q15(3, 7))


