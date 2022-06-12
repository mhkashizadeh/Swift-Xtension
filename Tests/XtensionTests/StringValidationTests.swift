import XCTest
@testable import Xtension

final class StringValidationTests: XCTestCase {
    
    func testRegexValidation() {
        XCTAssertEqual("hello world".validate(pattern: #"(\w)\s(\w)"#), true)
    }
    
    func testAphabetValidation() {
        XCTAssertEqual("Abc".validate(pattern: .alphabet), true)
        XCTAssertEqual("hello world".validate(pattern: .alphabet), false)
        XCTAssertEqual("@X".validate(pattern: .alphabet), false)
        XCTAssertEqual("1234".validate(pattern: .alphabet), false)
    }
    
    func testSentenceValidation() {
        XCTAssertEqual("Abc".validate(pattern: .sentence), true)
        XCTAssertEqual("hello world".validate(pattern: .sentence), true)
    }
    
    func testAlphaNumbericValidation() {
        XCTAssertEqual("Abc".validate(pattern: .alphanumeric), true)
        XCTAssertEqual("Z560".validate(pattern: .alphanumeric), true)
    }
    
    func testEmailValidation() {
        XCTAssertEqual("mail@example.com".validate(pattern: .email), true)
        XCTAssertEqual("example.com".validate(pattern: .email), false)
    }
    
    func testUrlValidation() {
        XCTAssertEqual("example.com".validate(pattern: .url), true)
        XCTAssertEqual("www.example.com".validate(pattern: .url), true)
        XCTAssertEqual("http://example.com".validate(pattern: .url), true)
        XCTAssertEqual("https://example.com".validate(pattern: .url), true)
        XCTAssertEqual("http://www.example.com".validate(pattern: .url), true)
        XCTAssertEqual("https://sub.example.com".validate(pattern: .url), true)
        XCTAssertEqual("https://sub.example.com/index.html".validate(pattern: .url), true)
    }
    
    func testNumberValidation() {
        XCTAssertEqual("123456".validate(pattern: .number), true)
        XCTAssertEqual("3.14".validate(pattern: .number), true)
        XCTAssertEqual("0.1".validate(pattern: .number), true)
        XCTAssertEqual(".1".validate(pattern: .number), false)
    }
    
    func testZipcodeValidation() {
        XCTAssertEqual("90807".validate(pattern: .zipcode), true)
        XCTAssertEqual("92064-3404".validate(pattern: .zipcode), true)
    }
}
