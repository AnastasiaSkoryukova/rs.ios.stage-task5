import UIKit

class MessageDecryptor: NSObject {
    
    func decryptMessage(_ message: String) -> String {
        
        if message.count < 1 && message.count > 60 {
            return ""
        }
        
        let characterSet = CharacterSet.init(charactersIn: "[]").union(.alphanumerics).union(.lowercaseLetters)
        
        
        let numberInMessage = message.components(separatedBy: CharacterSet.decimalDigits.inverted)
        let list = numberInMessage.filter({ $0 != "" })

        print(list)
        var listOfIntsToCheck = [Int]()

        for element in list {
            listOfIntsToCheck.append(Int(element) ?? 0)
        }
        
        if !listOfIntsToCheck.allSatisfy({ $0 < 300 }) {
            return ""
        }

        
        if characterSet.isSuperset(of: CharacterSet(charactersIn: message)) {
            
        }
        
        return ""
    }
}
