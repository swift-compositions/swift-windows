public import Random
public import Windows_32_Kernel
public import Windows_Kernel_Descriptor

public typealias Kernel = Windows.Kernel

public typealias Windows = Windows_32_Kernel::Windows

public typealias Random = Random::Random

extension Windows {
    public typealias Random = Random::Random
}
