import Foundation

public class challenge_1{
    public init(){}
    
    public func challenge1s(input: String) -> Bool { var usedLetters = [Character]()
        for letter in input {
            if usedLetters.contains(letter) {
                return false
            }
            usedLetters.append(letter)
            
        }
        return true
        
    }
}


