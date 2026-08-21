#if os(Windows)
    extension Windows.Kernel.Socket {

        public static func accept(
            _ socket: borrowing Descriptor
        ) throws(Error) -> Descriptor {
            try Windows.`32`.Kernel.Socket.accept(socket)
        }
    }
#endif
