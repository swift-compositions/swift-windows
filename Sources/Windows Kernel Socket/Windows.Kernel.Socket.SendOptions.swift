#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias SendOptions = Windows.`32`.Kernel.Socket.SendOptions
    }
#endif
