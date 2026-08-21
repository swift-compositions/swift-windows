@_spi(Syscall) public import Windows_32_Kernel

#if os(Windows)

    extension Windows.Kernel {

        public typealias Descriptor = Windows.`32`.Kernel.Descriptor
    }

#endif
