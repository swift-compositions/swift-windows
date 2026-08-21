#if os(Windows)
    extension Windows.Kernel.Socket {

        public typealias ReceiveOptions = Windows.`32`.Kernel.Socket.ReceiveOptions
    }
#endif
