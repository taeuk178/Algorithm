import Foundation

func string2902(){
    let input = String(readLine() ?? "")
    let splitinput = input.split(separator: "-")
    var empty = ""
    for i in splitinput{
        let ts = i.first
        empty.append(String(ts!))
    }
    print(empty)
}

