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
        /// Receives one datagram into initialized storage.
        public static func receive(
            _ socket: borrowing Descriptor,
            into span: inout Swift.MutableSpan<UInt8>,
            flags: ReceiveOptions = .none
        ) throws(Error) -> (count: Int, address: Address.Storage) {
            try Windows.`32`.Kernel.Socket.receive(socket, into: &span, flags: flags)
        }
    }
#endif
