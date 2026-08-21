@_exported public import Random_Primitives
@_exported public import Windows_32_Kernel
@_exported public import Windows_Kernel_Descriptor

public typealias Kernel = Windows.Kernel

public typealias Windows = Windows_32_Kernel.Windows

public typealias Random = Random_Primitives.Random

extension Windows {
    public typealias Random = Random_Primitives.Random
}
