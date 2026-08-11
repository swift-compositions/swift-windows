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
        /// Typed reactive connection operations — canonical at the Win32 specification layer.
        public typealias Connect = Windows.`32`.Kernel.Socket.Connect
    }
#endif
