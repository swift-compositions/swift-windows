#if os(Windows)
    public import Windows_Kernel
    @_exported public import Windows_32_Kernel_Socket

    extension Windows.Kernel {

        public enum Socket: Sendable {}
    }

    extension Windows.Kernel.Socket {

        public typealias Descriptor = Windows.`32`.Kernel.Socket.Descriptor
    }

#endif
