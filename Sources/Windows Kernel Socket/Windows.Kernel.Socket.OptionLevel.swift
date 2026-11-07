#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias OptionLevel = Windows.`32`.Kernel.Socket.OptionLevel
    }
#endif
