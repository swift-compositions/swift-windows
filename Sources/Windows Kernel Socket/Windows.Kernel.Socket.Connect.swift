#if os(Windows)
    extension Windows.Kernel.Socket {

        public typealias Connect = Windows.`32`.Kernel.Socket.Connect
    }
#endif
