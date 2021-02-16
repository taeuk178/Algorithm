import Foundation


func String11721(){
    var length = 0
    var tmpString = ""
    var sList: [String] = []
    let input = String(readLine() ?? "")

    for i in input{
        tmpString.append(i)
        length += 1
        
        if length == 10{
            sList.append(tmpString)
            length = 0
            tmpString = ""
            
        }
    }
    if !tmpString.isEmpty{
        sList.append(tmpString)
    }
    print(sList.joined(separator: "\n"))
}

