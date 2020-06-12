    import XCTest
    @testable import swift_proxy

    final class swift_proxyTests: XCTestCase {
        func testExample() {
            // This is an example of a functional test case.
            // Use XCTAssert and related functions to verify your tests produce the correct
            // results.
            XCTAssertEqual(swift_proxy().text, "Hello, World!")
        }

        static var allTests = [
            ("testExample", testExample),
        ]
    }
