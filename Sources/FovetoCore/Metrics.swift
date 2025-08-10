import Foundation

public enum Metrics {
    public static func dopamineLoad(for events: [Event]) -> Double {
        events.reduce(0) { sum, event in
            let weight = dopamineWeight(for: event.category)
            return sum + weight * event.duration/60.0 * Double(event.intensity)
        }
    }

    public static func energyScore(baseFromSleep: Double, gains: Double, drains: Double) -> Double {
        baseFromSleep + gains - drains
    }

    public static func focusIntegrity(goalTime: TimeInterval, distractionTime: TimeInterval) -> Double {
        let total = goalTime + distractionTime
        guard total > 0 else { return 0 }
        return goalTime / total
    }

    private static func dopamineWeight(for category: Event.Category) -> Double {
        switch category {
        case .scroll: return 1.0
        case .switchBurst: return 0.6
        case .toxic: return 0.7
        case .social: return 0.5
        default: return 0.0
        }
    }
}
