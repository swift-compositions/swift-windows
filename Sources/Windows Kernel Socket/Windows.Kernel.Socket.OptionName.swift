#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias OptionName = Windows.`32`.Kernel.Socket.OptionName
    }
#endif
