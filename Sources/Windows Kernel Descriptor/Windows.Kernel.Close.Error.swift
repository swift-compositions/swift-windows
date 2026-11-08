import Error
import Windows_32_Kernel

#if os(Windows)

    extension Windows.Kernel.Close {
        public enum Error: Swift.Error, Sendable {
            case handle(Windows.`32`.Kernel.Descriptor.Validity.Error)
            case io(Windows.`32`.Kernel.IO.Error)
            case platform(Error::Error)
        }
    }

    extension Windows.Kernel.Close.Error: Equatable {
        public static func == (lhs: Self, rhs: Self) -> Bool {
            switch (lhs, rhs) {
            case (.handle(let l), .handle(let r)): return l == r
            case (.io(let l), .io(let r)): return l == r
            case (.platform(let l), .platform(let r)): return l == r
            default: return false
            }
        }
    }

    extension Windows.Kernel.Close.Error: CustomStringConvertible {
        public var description: Swift.String {
            switch self {
            case .handle(let e): return "handle: \(e)"
            case .io(let e): return "io: \(e)"
            case .platform(let e): return "\(e)"
            }
        }
    }

#endif

#if os(Windows)

    extension Windows.Kernel.Close.Error {

        @inlinable
        public init(code: Error::Error.Code) {
            if let e = Windows.`32`.Kernel.Descriptor.Validity.Error(code: code) {
                self = .handle(e)
                return
            }
            if let e = Windows.`32`.Kernel.IO.Error(code: code) {
                self = .io(e)
                return
            }
            self = .platform(Error::Error(code: code))
        }
    }
#endif
