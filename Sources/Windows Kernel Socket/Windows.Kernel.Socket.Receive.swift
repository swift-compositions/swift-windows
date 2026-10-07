#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public static func receive(
            _ socket: borrowing Descriptor,
            into span: inout Swift.MutableSpan<UInt8>,
            flags: ReceiveOptions = .none
        ) throws(Error) -> (count: Int, address: Address.Storage) {
            try Windows.`32`.Kernel.Socket.receive(socket, into: &span, flags: flags)
        }
    }
#endif
