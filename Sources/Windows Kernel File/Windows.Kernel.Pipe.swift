#if os(Windows)
    public import Windows_Kernel
    public import Windows_32_Kernel_File

    extension Windows.Kernel {

        public typealias Pipe = Windows.`32`.Kernel.Pipe
    }

#endif
