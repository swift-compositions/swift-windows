#if os(Windows)
    extension Windows.Kernel.Socket {

        public static func bind(
            _ socket: borrowing Descriptor,
            address: Address.Storage
        ) throws(Error) {
            try Windows.`32`.Kernel.Socket.bind(socket, address: address)
        }
    }
#endif
