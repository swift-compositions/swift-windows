#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public static func accept(
            _ socket: borrowing Descriptor
        ) throws(Error) -> Descriptor {
            try Windows.`32`.Kernel.Socket.accept(socket)
        }
    }
#endif
