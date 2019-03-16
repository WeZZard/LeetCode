import XCTest
@testable import ValidNumber

final class ValidNumberTests: XCTestCase {
    func testIsNumber() {
        XCTAssertFalse(Solution().isNumber("92e1740e91"), "\"92e1740e91\"")
        XCTAssertTrue(Solution().isNumber("46.e3"), "\"46.e3\"")
        XCTAssertFalse(Solution().isNumber("0e "), "\"0e \"")
        XCTAssertFalse(Solution().isNumber("1 4"), "\"1 4\"")
        XCTAssertFalse(Solution().isNumber("."), "\".\"")
        XCTAssertTrue(Solution().isNumber("3."), "\"3.\"")
        XCTAssertTrue(Solution().isNumber(".1"), "\".1\"")
        XCTAssertTrue(Solution().isNumber("1 "), "\"1 \"")
        XCTAssertTrue(Solution().isNumber("0"), "\"0\"")
        XCTAssertTrue(Solution().isNumber(" 0.1"), "\" 0.1\"")
        XCTAssertFalse(Solution().isNumber("abc"), "\"abc\"")
        XCTAssertFalse(Solution().isNumber("1 a"), "\"1 a\"")
        XCTAssertTrue(Solution().isNumber("2e10"), "\"2e10\"")
        XCTAssertTrue(Solution().isNumber(" -90e3   "), "\" -90e3   \"")
        XCTAssertFalse(Solution().isNumber(" 1e"), "\" 1e\"")
        XCTAssertFalse(Solution().isNumber("e3"), "\"e3\"")
        XCTAssertTrue(Solution().isNumber(" 6e-1"), "\" 6e-1\"")
        XCTAssertFalse(Solution().isNumber(" 99e2.5 "), "\" 99e2.5 \"")
        XCTAssertFalse(Solution().isNumber(" --6 "), "\" --6 \"")
        XCTAssertFalse(Solution().isNumber("-+3"), "\"-+3\"")
        XCTAssertFalse(Solution().isNumber("95a54e53"), "\"95a54e53\"")
    }

    static var allTests = [
        ("testIsNumber", testIsNumber),
    ]
}
