#if os(Windows)
    extension Windows.Kernel.Socket {

        public typealias Error = Windows.`32`.Kernel.Socket.Error
    }
#endif
