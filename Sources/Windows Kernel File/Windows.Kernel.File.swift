#if os(Windows)
    public import Windows_Kernel
    @_exported public import Windows_32_Kernel_File

    extension Windows.Kernel {

        public enum File: Sendable {}
    }

    extension Windows.Kernel.File {

        public typealias Attributes = Windows.`32`.Kernel.File.Attributes

        public typealias Chown = Windows.`32`.Kernel.File.Chown

        public typealias Delete = Windows.`32`.Kernel.File.Delete

        public typealias Flush = Windows.`32`.Kernel.File.Flush

        public typealias Handle = Windows.`32`.Kernel.File.Handle

        public typealias Move = Windows.`32`.Kernel.File.Move

        public typealias Offset = Windows.`32`.Kernel.File.Offset

        public typealias Open = Windows.`32`.Kernel.File.Open

        public typealias Permissions = Windows.`32`.Kernel.File.Permissions

        public typealias Seek = Windows.`32`.Kernel.File.Seek

        public typealias Size = Windows.`32`.Kernel.File.Size

        public typealias Stats = Windows.`32`.Kernel.File.Stats

        public typealias Times = Windows.`32`.Kernel.File.Times
    }

#endif
