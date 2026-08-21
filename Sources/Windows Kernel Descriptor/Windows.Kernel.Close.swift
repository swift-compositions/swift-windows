public import Windows_32_Kernel

#if os(Windows)

    extension Windows.Kernel {

        public enum Close: Sendable {}
    }

    extension Windows.Kernel.Close {

        public static func close(_ descriptor: consuming Windows.Kernel.Descriptor) throws(Error) {
            do throws(Windows.`32`.Kernel.Close.Error) {
                try Windows.`32`.Kernel.Close.close(descriptor)
            } catch {
                switch error {
                case .handle(let e):
                    throw .handle(e)

                case .platform(let e):
                    throw .platform(e)
                }
            }
        }
    }

#endif
