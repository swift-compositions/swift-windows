#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias ReceiveOptions = Windows.`32`.Kernel.Socket.ReceiveOptions
    }
#endif
