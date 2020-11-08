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
func solution11(_ s: String, _ n: Int) -> String{
   var answer = String()
    let alphabet = ["A":0,"B":1,"C":2,"D":3,"E":4,"F":5,"G":6,"H":7,"I":8,"J":9,"K":10,"L":11,"M":12,"N":13,"O":14,"P":15,"Q":16,"R":17,"S":18,"T":19,"U":20,"V":21,"W":22,"X":23,"Y":24,"Z":25]
    let keys = alphabet.keys.sorted()
    
    for i in 0..<Array(s).count{
        if Array(s)[i] == " "{
            answer += " "
            continue
        }
        var number = alphabet[String(Array(s)[i].uppercased())]! + n
        if number > 25 {
            number = number - 26
        }
        let value = keys[number]
        let value1 = alphabet.index(forKey: value)
        if Array(s)[i].isUppercase{
            answer += alphabet.keys[value1!]
        }else {
            answer += alphabet.keys[value1!].lowercased()
        }
    }
    return answer
}
print(solution11("ab", 1))
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
