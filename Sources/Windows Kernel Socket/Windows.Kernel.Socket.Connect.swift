#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias Connect = Windows.`32`.Kernel.Socket.Connect
    }
#endif
