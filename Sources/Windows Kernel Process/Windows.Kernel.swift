#if os(Windows)
    public import Windows_Kernel
    @_exported public import Windows_32_Kernel_Process

    extension Windows.Kernel {

        public typealias Process = Windows.`32`.Kernel.Process
    }
#endif
