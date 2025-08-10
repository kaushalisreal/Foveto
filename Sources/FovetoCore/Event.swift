import Foundation

public struct Event: Identifiable, Codable {
    public let id: UUID
    public var userID: UUID
    public var timestampStart: Date
    public var timestampEnd: Date
    public var source: Source
    public var category: Category
    public var tags: [String]
    public var note: String?
    public var intensity: Int
    public var context: Context
    public var confidence: Double

    public init(
        id: UUID = UUID(),
        userID: UUID,
        timestampStart: Date,
        timestampEnd: Date,
        source: Source,
        category: Category,
        tags: [String] = [],
        note: String? = nil,
        intensity: Int = 1,
        context: Context = Context(device: "unknown", location: nil),
        confidence: Double = 1.0
    ) {
        self.id = id
        self.userID = userID
        self.timestampStart = timestampStart
        self.timestampEnd = timestampEnd
        self.source = source
        self.category = category
        self.tags = tags
        self.note = note
        self.intensity = intensity
        self.context = context
        self.confidence = confidence
    }

    public enum Source: String, Codable {
        case app
        case browser
        case manual
    }

    public enum Category: String, Codable, CaseIterable {
        case scroll
        case switchBurst = "switch"
        case study
        case workout
        case sleep
        case social
        case toxic
        case deepWork = "deep_work"
        case admin
        case breakTime = "break"
        case meal
        case walk
        case meditate
        case contentCreate = "content_create"
    }

    public struct Context: Codable {
        public var device: String
        public var location: String?

        public init(device: String, location: String? = nil) {
            self.device = device
            self.location = location
        }
    }
}

public extension Event {
    var duration: TimeInterval {
        timestampEnd.timeIntervalSince(timestampStart)
    }
}
