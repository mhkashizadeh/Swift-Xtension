import Foundation


extension String {
    
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
        
        let result = regex.matches(
            in: self,
            options: [],
            range: sourceRange
        )
        
        return !result.isEmpty
    }
}
