#if os(Windows)
    public import Windows_Kernel
    @_exported public import Windows_32_Kernel

    extension Windows.Kernel {

        public enum Thread: Sendable {}
    }

    extension Windows.Kernel.Thread {

        public typealias Error = Windows.`32`.Kernel.Thread.Error

        public typealias Handle = Windows.`32`.Kernel.Thread.Handle

        public typealias ID = Windows.`32`.Kernel.Thread.ID

        public typealias Mutex = Windows.`32`.Kernel.Thread.Mutex

        public typealias Condition = Windows.`32`.Kernel.Thread.Condition
    }

#endif

#if os(Windows)
    public import Windows_Kernel
    public import Windows_32_Kernel

    extension Windows.Kernel.Thread {

        /// Suspends the calling thread for the duration, rounded down to milliseconds.
        @inlinable
        public static func sleep(_ duration: Duration) {
            Windows.`32`.Kernel.Thread.sleep(duration)
        }
    }

#endif
