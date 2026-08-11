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
        /// Accepts a connection from a listening socket.
        public static func accept(
            _ socket: borrowing Descriptor
        ) throws(Error) -> Descriptor {
            try Windows.`32`.Kernel.Socket.accept(socket)
        }
    }
#endif
