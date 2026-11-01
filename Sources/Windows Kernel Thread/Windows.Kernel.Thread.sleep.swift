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
