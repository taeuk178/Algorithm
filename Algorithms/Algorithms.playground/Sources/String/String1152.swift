import Foundation


func String1152(){
    let strings = String(readLine() ?? "")
    print(strings.split{$0 == " "}.count)
}

