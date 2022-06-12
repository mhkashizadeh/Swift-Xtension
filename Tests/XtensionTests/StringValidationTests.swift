import XCTest
@testable import Xtension

final class StringValidationTests: XCTestCase {
    
    func testRegexValidation() {
        XCTAssertEqual("hello world".validate(pattern: #"(\w)\s(\w)"#), true)
    }
}
