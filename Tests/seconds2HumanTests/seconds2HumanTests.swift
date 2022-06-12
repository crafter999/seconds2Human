import XCTest
@testable import seconds2Human

final class seconds2HumanTests: XCTestCase {
    func testSeconds() {
        XCTAssertEqual(seconds2Human(number: 1), "1 second")
        XCTAssertEqual(seconds2Human(number: 2), "2 seconds")
        XCTAssertEqual(seconds2Human(number: 59, compact: true), "59s")
    }
    
    func testMinutes() {
        XCTAssertEqual(seconds2Human(number: 60), "1 minute")
        XCTAssertEqual(seconds2Human(number: 120), "2 minutes")
        XCTAssertEqual(seconds2Human(number: 1980, compact: true), "33m")

    }
    
    func testHours() {
        XCTAssertEqual(seconds2Human(number: 3600), "1 hour")
        XCTAssertEqual(seconds2Human(number: 7200), "2 hours")
        XCTAssertEqual(seconds2Human(number: 64800, compact: true), "18h")

    }
    
    func testDays() {
        XCTAssertEqual(seconds2Human(number: 86400), "1 day")
        XCTAssertEqual(seconds2Human(number: 172800), "2 days")
        XCTAssertEqual(seconds2Human(number: 2160000, compact: true), "25d")
    }
}
