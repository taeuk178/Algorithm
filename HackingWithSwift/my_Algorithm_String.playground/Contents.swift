import UIKit

func challenge1(input: String) -> Bool{
    return Set(input).count == input.count
}
print(challenge1(input: "Hello, world"))
