#if os(Windows)
    public import Windows_32_Kernel_Lock
    public import Windows_Kernel

    extension Windows.Kernel {

        public enum Lock: Sendable {}
    }

    extension Windows.Kernel.Lock {

        public typealias Error = Windows.`32`.Kernel.Lock.Error

        public typealias Range = Windows.`32`.Kernel.Lock.Range

        public typealias Kind = Windows.`32`.Kernel.Lock.Kind

        public typealias Acquire = Windows.`32`.Kernel.Lock.Acquire

        public typealias Token = Windows.`32`.Kernel.Lock.Token

        public enum Immediate: Sendable {}
    }

    extension Windows.Kernel.Lock {

        public static func lock(
            _ descriptor: borrowing Windows.Kernel.Descriptor,
            range: Range,
            kind: Kind
        ) throws(Error) {
            try Windows.`32`.Kernel.Lock.lock(descriptor, range: range, kind: kind)
        }

        public static func unlock(
            _ descriptor: borrowing Windows.Kernel.Descriptor,
            range: Range
        ) throws(Error) {
            try Windows.`32`.Kernel.Lock.unlock(descriptor, range: range)
        }
    }

    extension Windows.Kernel.Lock.Immediate {

        public static func lock(
            _ descriptor: borrowing Windows.Kernel.Descriptor,
            range: Windows.Kernel.Lock.Range,
            kind: Windows.Kernel.Lock.Kind
        ) throws(Windows.Kernel.Lock.Error) {
            try Windows.`32`.Kernel.Lock.Immediate.lock(descriptor, range: range, kind: kind)
        }
    }

#endif
