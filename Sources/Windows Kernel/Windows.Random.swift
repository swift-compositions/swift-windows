#if os(Windows)

    extension Random {

        public static func fill(
            _ buffer: UnsafeMutableRawBufferPointer
        ) throws(Error) {
            try Windows.`32`.Kernel.Random.bCryptGenRandom(buffer)
        }
    }

#endif
