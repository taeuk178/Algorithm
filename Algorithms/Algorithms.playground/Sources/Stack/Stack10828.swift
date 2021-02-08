import Foundation

func stack10828(){
    let input = Int(readLine() ?? "") ?? 0
    var stack: [Int] = []
    func empty() -> Int {
        return stack.isEmpty ? 1 : 0
        
    }
    func top() -> Int {
        return stack.first ?? -1
    }
    func size() -> Int {
        return stack.count
        
    }
    func pop() -> Int {
        return stack.isEmpty ? -1 : stack.removeFirst()
        
    }
    func push(_ input: Int) {
        stack.insert(input, at: 0)
        
    }
    for _ in 0..<input {
        let input = readLine() ?? ""
        switch input {
        case "pop":
            print(pop())
        case "size":
            print(size())
        case "empty":
            print(empty())
        case "top": print(top())
        case let x where x.contains("push"):
            let input = Int(x.replacingOccurrences(of: "push ", with: "")) ?? 0
            push(input)
        default:
            break
        }
    }
}

