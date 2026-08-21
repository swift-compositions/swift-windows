#if os(Windows)
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
