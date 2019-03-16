import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_5_Valid_NumberTests.allTests),
    ]
}
#endif