import Foundation

public class level_1{
    public init(){}
    
    public func solution1(_ n: Int) -> Int{
        var count = 0
        if n == 0{
            return count
        }
        for i in 1...n{
            if n % i == 0{
                count += i
            }
            
        }
        return count
    }
    //문자열 내 p와 y의 개수
    public func solution2(_ s: String) -> Bool{
        // components, filter.count 가능
        var Pcounts = 0
        var Ycounts = 0
        let ans: Bool = false
        for i in s{
            if i == "P" || i == "p"{
                Pcounts = Pcounts + 1
            }else if i == "Y" || i == "y"{
                Ycounts = Ycounts + 1
            }
        }
        if Pcounts == Ycounts{
            return true
        }
        return ans
    }
    //문자열 정수로 바꾸기
    public func solution3(_ s: String) -> Int{
        let tt = Int(s)!
        
        return tt
    }
    // 문자열 다루기
    public func solution4(_ s: String) -> Bool{

        
    //    if s.count == 4 || s.count == 6{
    //        if s.range(of: "[a-zA-Z]", options: .regularExpression) != nil{
    //            return false
    //        }else{
    //            return true
    //        }
    //    }
        if s.count == 4 || s.count == 6{
            let num = s.filter{$0.isNumber}
            if s.count == num.count{
                return true
            }
        }
        return false
    }
    // 소수구하기
    public func solution5(_ n: Int) -> Int{
        
        var count = 0
        var array = Array.init(repeating: false, count: n+1)
        
        for i in 2...n{
            if array[i] == false{
                count += 1
                for j in stride(from: i, through: n, by: i){
                    array[j] = true
                }
            }
        }
        return count
    }
    public func solution6(_ seoul: [String]) -> String{
        var count = 0
        for i in seoul{
            if i == "Kim"{
                return "김서방은 \(count)에 있다"
            }
            count = count + 1
        }
        return ""
        // 참고) index 씀
    //    return "김서방은 \(seoul.index(of: "Kim")!)에 있다"
    }
    // 수박수
    public func solution7(_ n: Int) -> String{
        var tt = ""
        if n > 0{
            for i in 0...n - 1{
                if i % 2 == 0{
                    tt.append("수")
                }else{
                    tt.append("박")
                }
            }
        }else{
            return ""
        }
        return tt
    }
    public func solution8(_ x: Int, _ n: Int)-> [Int64]{
        var counts = [Int64]()
        for i in 1...n{
            
            counts.append(Int64(x * i))
        }
        return counts
    }
    public func solution9(_ s: String) -> String{
        return String(s.sorted(){$0 > $1})
    }
    public func solution10(_ arr: [Int], _ divisor: Int) -> [Int]{
        // map, filter
        var arrays = [Int]()
        for i in 0..<arr.count{
            if arr[i] % divisor == 0{
                arrays.append(arr[i])
            }
        }
        if arrays.count > 0{
            arrays.sort(by: <)
            return arrays
        }else{
            return [-1]
        }
    }
    public func solution11(_ s: String, _ n: Int) -> String{
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
    public func solution12(_ arr: [Int]) -> [Int]{
        var tt = arr
        tt.remove(at: tt.index(of: tt.min()!)!)
        return tt.isEmpty ? [-1] : tt
    }
    public func solutionID(_ new_id: String) -> String{
        
        var myID = ""
        //1
        myID = new_id.lowercased()
        
        var newId = ""
        //2
        for i in myID{
            if i.isLetter || i.isNumber || i == "-" || i == "_" || i == "." {
                newId.append(i)
            }
        }
        //3차
        while newId.contains("..") {
            newId = newId.replacingOccurrences(of: "..", with: ".")
        }

        //4차
        while newId.hasPrefix(".") {
            newId.removeFirst()
        }

        while newId.hasSuffix(".") {
            newId.removeLast()
        }
        
        //5
        if newId == ""{
            newId.append("a")
        }
        
        //6
        if newId.count >= 16{
            let index = newId.index(newId.startIndex, offsetBy: 15)
            newId = String(newId[newId.startIndex..<index])
            
            while newId.hasSuffix(".") {
                newId.removeLast()
            }
        }
        
        //7
        if newId.count <= 2{
            while newId.count != 3{
                newId = newId + String(newId.last!)
            }
        }
        
        return newId
    }
    
    //내림차순 정렬
    func descendingOrder(_ s: Int64) -> Int{
        
        return Int(String(String(s).sorted(by: >)))!
    }
    
    //자릿수 더하기
    func solutions(_ n: Int) -> Int{
        
        var count = 0
        let ts = String(n)
        
        for i in ts{
            count += Int(String(i))!
        }

        
        return count
//        String(n)을 초기값 0으로 설정 후 0 + Int(String(n))형식으로 더한다.
//        return String(n).reduce(0, {$0 + Int(String($1))!})
    }
    
    //콜라츠 추측
    // 재귀로 풀거나 while로 품
    func solution(_ num: Int) -> Int{
        var count = 0
        var number = num

        if num == 1{
            return count
        }
        while count < 500{
            if number % 2 == 0{
                number = number / 2
                count += 1
            }else{
                number = number * 3 + 1
                count += 1
            }
            if number == 1{
                return count
            }
        }
        return -1
    }
    
}

