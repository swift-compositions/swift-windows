#if os(Windows)
    extension Windows.Kernel.Socket {

        public typealias SendOptions = Windows.`32`.Kernel.Socket.SendOptions
    }
#endif
