import DesignKitTokens

extension Theme {
    /// The default theme across all consumers.
    public static let `default`: Theme = .lcarsDark

    /// Every built-in theme (12 families × light/dark).
    public static let all: [Theme] = Family.allCases.flatMap {
        [$0.theme(for: .dark), $0.theme(for: .light)]
    }

    /// A theme family: one visual identity with a light and a dark variant.
    public enum Family: String, CaseIterable, Identifiable, Sendable {
        case blackAlert, borgCube, classic, command, federation, lcars
        case lcarsHighContrast, missionControl, readyRoom, redAlert
        case sickBay, yellowAlert

        public var id: String { rawValue }

        /// Human-readable family name, e.g. "Black Alert".
        public var displayName: String {
            switch self {
            case .blackAlert: "Black Alert"
            case .borgCube: "Borg Cube"
            case .classic: "Classic"
            case .command: "Command"
            case .federation: "Federation"
            case .lcars: "LCARS"
            case .lcarsHighContrast: "LCARS High Contrast"
            case .missionControl: "Mission Control"
            case .readyRoom: "Ready Room"
            case .redAlert: "Red Alert"
            case .sickBay: "Sick Bay"
            case .yellowAlert: "Yellow Alert"
            }
        }

        /// The family's theme for the given appearance.
        public func theme(for appearance: Theme.Appearance) -> Theme {
            switch (self, appearance) {
            case (.blackAlert, .dark): .blackAlertDark
            case (.blackAlert, .light): .blackAlertLight
            case (.borgCube, .dark): .borgCubeDark
            case (.borgCube, .light): .borgCubeLight
            case (.classic, .dark): .classicDark
            case (.classic, .light): .classicLight
            case (.command, .dark): .commandDark
            case (.command, .light): .commandLight
            case (.federation, .dark): .federationDark
            case (.federation, .light): .federationLight
            case (.lcars, .dark): .lcarsDark
            case (.lcars, .light): .lcarsLight
            case (.lcarsHighContrast, .dark): .lcarsHighContrastDark
            case (.lcarsHighContrast, .light): .lcarsHighContrastLight
            case (.missionControl, .dark): .missionControlDark
            case (.missionControl, .light): .missionControlLight
            case (.readyRoom, .dark): .readyRoomDark
            case (.readyRoom, .light): .readyRoomLight
            case (.redAlert, .dark): .redAlertDark
            case (.redAlert, .light): .redAlertLight
            case (.sickBay, .dark): .sickBayDark
            case (.sickBay, .light): .sickBayLight
            case (.yellowAlert, .dark): .yellowAlertDark
            case (.yellowAlert, .light): .yellowAlertLight
            }
        }
    }
}
