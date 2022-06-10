import Foundation


extension String {
    
    var upperCamelCased: String {
        get {
            return CaseConvertor.convert(pattern: .upperCamelCase, str: self)
        }
    }
    
    var lowerCammelCased: String {
        get {
            return CaseConvertor.convert(pattern: .lowerCamelCase, str: self)
        }
    }
    
    var lowerSnakeCased: String {
        get {
            return CaseConvertor.convert(pattern: .lowerSnakeCase, str: self)
        }
    }
    
    var upperSnakeCased: String {
        get {
            return CaseConvertor.convert(pattern: .upperSnakeCase, str: self)
        }
    }
    
    
    class CaseConvertor {
        
        enum LetterCasePattern {
            case upperCamelCase
            case lowerCamelCase
            case lowerSnakeCase
            case upperSnakeCase
        }
        
        static func convert(pattern: LetterCasePattern, str: String) -> String {
            let str = clearText(str: str)
            
            switch pattern {
                case .upperCamelCase:
                    return upperCamelCase(str: str)
                case .lowerCamelCase:
                    return lowerCamelCase(str: str)
                case .lowerSnakeCase:
                    return lowerSnakeCase(str: str)
                case .upperSnakeCase:
                    return upperSnakeCase(str: str)
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
        
        private static func lowerCamelCase(str: String) -> String{
            var output = ""
            let words = str.split(separator: " ")
            for (index, word) in words.enumerated() {
                if index == 0 {
                    output = String(word)
                }else {
                    output += word.capitalized
                }
            }
            
            return output
        }
        
        
        private static  func lowerSnakeCase(str: String) -> String {
            var output = ""
            let words = str.split(separator: " ")
            for (index, word) in words.enumerated() {
                if index == 0 {
                    output = String(word)
                } else {
                    output += "_\(word)"
                }
            }
            
            return output
        }

        
        private static  func upperSnakeCase(str: String) -> String {
            return lowerSnakeCase(str: str).uppercased()
        }

    }
}
