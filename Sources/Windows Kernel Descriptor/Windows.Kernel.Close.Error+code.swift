public import Error
public import Windows_32_Kernel

#if os(Windows)

    extension Windows.Kernel.Close.Error {

        @inlinable
        public init(code: Error.Error.Code) {
            if let e = Windows.`32`.Kernel.Descriptor.Validity.Error(code: code) {
                self = .handle(e)
                return
            }
            if let e = Windows.`32`.Kernel.IO.Error(code: code) {
                self = .io(e)
                return
            }
            self = .platform(Error.Error(code: code))
        }
    }
#endif
