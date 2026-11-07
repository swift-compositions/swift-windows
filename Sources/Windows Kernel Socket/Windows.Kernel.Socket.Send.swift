#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public static func send(
            _ socket: borrowing Descriptor,
            from span: Swift.Span<UInt8>,
            to address: Address.Storage,
            flags: SendOptions = .none
        ) throws(Error) -> Int {
            try Windows.`32`.Kernel.Socket.send(socket, from: span, to: address, flags: flags)
        }
    }
#endif
