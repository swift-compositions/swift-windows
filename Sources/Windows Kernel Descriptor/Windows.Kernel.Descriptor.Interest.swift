#if os(Windows)

    extension Windows.Kernel.Descriptor {

        public struct Interest: OptionSet, Sendable, Hashable {
            public let rawValue: UInt8

            public init(rawValue: UInt8) {
                self.rawValue = rawValue
            }
        }
    }

    extension Windows.Kernel.Descriptor.Interest {

        public static let read = Self(rawValue: 1 << 0)

        public static let write = Self(rawValue: 1 << 1)

        public static let priority = Self(rawValue: 1 << 2)
    }

    extension Windows.Kernel.Descriptor.Interest: CustomStringConvertible {
        public var description: Swift.String {
            var parts: [Swift.String] = []
            if contains(.read) { parts.append("read") }
            if contains(.write) { parts.append("write") }
            if contains(.priority) { parts.append("priority") }
            return parts.isEmpty ? "none" : parts.joined(separator: "|")
        }
    }

#endif
