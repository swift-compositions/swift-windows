#if os(Windows)
    public import Windows_Kernel
    @_exported public import Windows_32_Kernel_Socket

    extension Windows.Kernel {

        public enum Socket: Sendable {}
    }

    extension Windows.Kernel.Socket {

        public typealias Descriptor = Windows.`32`.Kernel.Socket.Descriptor
    }

#endif

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

#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias Address = Windows.`32`.Kernel.Socket.Address
    }
#endif

#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public static func bind(
            _ socket: borrowing Descriptor,
            address: Address.Storage
        ) throws(Error) {
            try Windows.`32`.Kernel.Socket.bind(socket, address: address)
        }
    }
#endif

#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias Connect = Windows.`32`.Kernel.Socket.Connect
    }
#endif

#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias Error = Windows.`32`.Kernel.Socket.Error
    }
#endif

#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias Family = Windows.`32`.Kernel.Socket.Family
    }
#endif

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

#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias OptionLevel = Windows.`32`.Kernel.Socket.OptionLevel
    }
#endif

#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias OptionName = Windows.`32`.Kernel.Socket.OptionName
    }
#endif

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

#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias ReceiveOptions = Windows.`32`.Kernel.Socket.ReceiveOptions
    }
#endif

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

#if os(Windows)
    public import Windows_Kernel

    extension Windows.Kernel.Socket {

        public typealias SendOptions = Windows.`32`.Kernel.Socket.SendOptions
    }
#endif
