import XCTest
@testable import Xtension

final class StringCaseConverterTests: XCTestCase {
    func testUpperCamelCaseConverter() {
        XCTAssertEqual("hello world".upperCamelCased, "HelloWorld")
    }
}
