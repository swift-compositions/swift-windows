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
        /// Returns the local address assigned to a socket.
        public static func localAddress(
            _ socket: borrowing Descriptor
        ) throws(Error) -> Address.Storage {
            try Windows.`32`.Kernel.Socket.localAddress(socket)
        }

        /// Returns the peer address of a connected socket.
        public static func peerAddress(
            _ socket: borrowing Descriptor
        ) throws(Error) -> Address.Storage {
            try Windows.`32`.Kernel.Socket.peerAddress(socket)
        }
    }
#endif
