#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public static func localAddress(
            _ socket: borrowing Descriptor
        ) throws(Error) -> Address.Storage {
            try Windows.`32`.Kernel.Socket.localAddress(socket)
        }

        public static func peerAddress(
            _ socket: borrowing Descriptor
        ) throws(Error) -> Address.Storage {
            try Windows.`32`.Kernel.Socket.peerAddress(socket)
        }
    }
#endif
