import XCTest
@testable import FovetoCore

final class MetricsTests: XCTestCase {
    func testDopamineLoad() {
        let user = UUID()
        let start = Date()
        let end = start.addingTimeInterval(600) // 10m
        let events = [
            Event(userID: user, timestampStart: start, timestampEnd: end, source: .app, category: .scroll, intensity: 1)
        ]
        XCTAssertEqual(Metrics.dopamineLoad(for: events), 10.0, accuracy: 0.001)
    }

    func testFocusIntegrity() {
        let fi = Metrics.focusIntegrity(goalTime: 50, distractionTime: 25)
        XCTAssertEqual(fi, 0.666, accuracy: 0.001)
    }
}
