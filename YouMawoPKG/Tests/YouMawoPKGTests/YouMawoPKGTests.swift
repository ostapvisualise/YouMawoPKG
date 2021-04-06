import XCTest
@testable import YouMawoPKG

final class YouMawoPKGTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(YouMawoPKG().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
