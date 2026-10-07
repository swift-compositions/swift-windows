#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias Address = Windows.`32`.Kernel.Socket.Address
    }
#endif
