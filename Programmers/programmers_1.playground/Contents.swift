import UIKit

func solution(_ numbers: [Int]) -> [Int]{
    var list = [Int]()
    let tt = numbers.sorted()
    for i in 0...tt.count - 1{
        print("i == ", tt[i])
        for j in i...tt.count - 1{
            if i == tt.count - 1{
                print("j = end")
            }else{
                if j + 1 > tt.count - 1{
                    
                }
                print("j = ", tt[j + 1])
            }
            
        }
    }
    
    return tt
}

//print(solution([2,1,3,4,1]))

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
