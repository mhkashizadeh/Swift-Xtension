import Foundation


extension String {
    
    var upperCamelCased: String {
        get {
            return CaseConvertor.convert(pattern: .upperCamelCase, str: self)
        }
    }
    
    
    class CaseConvertor {
        
        enum LetterCasePattern {
            case upperCamelCase
        }
        
        static func convert(pattern: LetterCasePattern, str: String) -> String {
            let str = clearText(str: str)
            
            switch pattern {
                case .upperCamelCase:
                    return upperCamelCase(str: str)
            }
        }
        
        
        private static  func clearText(str: String) -> String{
            var str = str.replacingOccurrences(of: #"[^a-zA-Z0-9]"#, with: " ", options: .regularExpression)
            str = str.replacingOccurrences(of: #"([A-Z]+)"#, with: " $1", options: .regularExpression)
            str = str.trimmingCharacters(in: .whitespacesAndNewlines)
            str = str.lowercased()
            return str
        }
        
        private static func upperCamelCase(str: String) -> String {
            var output = ""
            let words = str.split(separator: " ")
            for word in words {
                output += word.capitalized
            }
            
            return output
        }
    }
}
