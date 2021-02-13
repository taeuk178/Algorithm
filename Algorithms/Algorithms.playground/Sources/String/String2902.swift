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

/*
 다른사람 고차함수 이용 풀이
 
 let line = readLine() ?? ""
 let result = line.split { $0 == "-" }.map { String($0.first!) }.reduce("", +)
 
 print(result)
 
 */
