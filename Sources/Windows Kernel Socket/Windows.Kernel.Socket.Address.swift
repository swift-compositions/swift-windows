#if os(Windows)
    extension Windows.Kernel.Socket {

        public typealias Address = Windows.`32`.Kernel.Socket.Address
    }
#endif
