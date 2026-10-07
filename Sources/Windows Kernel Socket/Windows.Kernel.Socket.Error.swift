#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias Error = Windows.`32`.Kernel.Socket.Error
    }
#endif
