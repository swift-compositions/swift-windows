#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias Family = Windows.`32`.Kernel.Socket.Family
    }
#endif
