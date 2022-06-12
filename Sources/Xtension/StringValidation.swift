import Foundation


extension String {
    
    enum ValidationPattern:String {
        case email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        case url = #"(?:(http|https):\/\/)?(?:\w+\.)?(\w+\.\w+)"#
        case number = #"^[0-9](?:\.[0-9])?"#
    }
    
    func validate(pattern: ValidationPattern) -> Bool{
        return validateString(pattern: pattern.rawValue)
    }
    
    func validate(pattern: String) -> Bool{
        return validateString(pattern: pattern)
    }
    
    private func validateString(pattern: String) -> Bool {
        let regex = try! NSRegularExpression(
            pattern: pattern,
            options: []
        )
        
        let sourceRange = NSRange(
            self.startIndex..<self.endIndex,
            in: self
        )
        
        let result = regex.numberOfMatches(
            in: self,
            options: [],
            range: sourceRange
        )

        return result != 0
    }
}
