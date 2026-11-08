#if os(Windows)
    @_spi(Syscall) public import Windows_32_Kernel

    extension Windows.Kernel {

        public typealias Descriptor = Windows.`32`.Kernel.Descriptor
    }

#endif
