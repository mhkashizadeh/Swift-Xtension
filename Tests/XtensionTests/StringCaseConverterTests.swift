import XCTest
@testable import Xtension

final class StringCaseConverterTests: XCTestCase {
    
    func testUpperCamelCaseConverter() {
        XCTAssertEqual("hello world".upperCamelCased, "HelloWorld")
    }
    
    func testLowerCamelCaseConverter() {
        XCTAssertEqual("hello world".lowerCammelCased, "helloWorld")
    }
    
    func testLowerSnakeCaseConverter() {
        XCTAssertEqual("hello world".lowerSnakeCased, "hello_world")
    }
    
    func testUpperSnakeCaseConverter() {
        XCTAssertEqual("hello world".upperSnakeCased, "HELLO_WORLD")
    }

    
}
