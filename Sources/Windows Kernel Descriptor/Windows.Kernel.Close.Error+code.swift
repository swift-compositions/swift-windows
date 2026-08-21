public import Error_Primitives
public import Windows_32_Kernel

#if os(Windows)

    extension Windows.Kernel.Close.Error {

        @inlinable
        public init(code: Error_Primitives.Error.Code) {
            if let e = Windows.`32`.Kernel.Descriptor.Validity.Error(code: code) {
                self = .handle(e)
                return
            }
            if let e = Windows.`32`.Kernel.IO.Error(code: code) {
                self = .io(e)
                return
            }
            self = .platform(Error_Primitives.Error(code: code))
        }
    }
#endif
