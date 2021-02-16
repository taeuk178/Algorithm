import Foundation

// 더 생각해보기
func String10987(){
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
}
/*
var tcount = ["a","e","i","o","u"]
for i in strings{
    if tcount.contains(String(i)){
        count += 1
    }
}
*/


