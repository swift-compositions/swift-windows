// ===----------------------------------------------------------------------===//
//
// This source file is part of the swift-windows open source project
//
// Copyright (c) 2024-2026 Coen ten Thije Boonkkamp and the swift-windows project authors
// Licensed under Apache License v2.0
//
// See LICENSE for license information
//
// ===----------------------------------------------------------------------===//

#if os(Windows)
    extension Windows.Kernel.Socket {
        /// Sends one datagram from initialized storage.
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
