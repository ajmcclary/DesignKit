import Foundation

extension Tokens {
    /// Reference colours. Every value is generated from the design system's tokens
    /// into `Palette+Generated.swift` (accent and its states, status, traffic
    /// lights, terminal ANSI).
    public enum Palette {
        public enum Accent {}
        public enum Status {}
        public enum TrafficLight {}
        public enum ANSI {}
    }
}
