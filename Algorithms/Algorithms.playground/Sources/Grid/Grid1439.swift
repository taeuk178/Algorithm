import Foundation

func grid1439(){
    // grid 1439
    //let strings = String(readLine() ?? "")
    var input = readLine()!.map() {String($0)}
    var countZero: Int = 0
    var countOne: Int = 0
    var resultCount = 0

    if input[0] == "0"{
        countZero = 1
    }else{
        countOne = 1
    }

    for i in 1 ... input.count - 1{
        if input[i] != input[i - 1]{
            if input[i] == "0"{
                countZero += 1
            }else{
                countOne += 1
            }
        }
    }

    if countZero >= countOne{
        print(countOne)
    }else{
        print(countZero)
    }
}
