import Foundation
import EOSSDK

/** Options for initializing the Epic Online Services SDK. */
public struct SwiftEOS_InitializeOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_INITIALIZE_API_LATEST`. */
    public let ApiVersion: Int32

    /** A custom memory allocator, if desired. */
    public let AllocateMemoryFunction: EOS_AllocateMemoryFunc?

    /** A corresponding memory reallocator. If the AllocateMemoryFunction is nulled, then this field must also be nulled. */
    public let ReallocateMemoryFunction: EOS_ReallocateMemoryFunc?

    /** A corresponding memory releaser. If the AllocateMemoryFunction is nulled, then this field must also be nulled. */
    public let ReleaseMemoryFunction: EOS_ReleaseMemoryFunc?

    /**
    The name of the product using the Epic Online Services SDK.

    The name string is required to be non-empty and at maximum of 64 characters long.
    The string buffer can consist of the following characters:
    A-Z, a-z, 0-9, dot, underscore, space, exclamation mark, question mark, and sign, hyphen, parenthesis, plus, minus, colon.
    */
    public let ProductName: String?

    /**
    Product version of the running application.

    The name string has same requirements as the ProductName string.
    */
    public let ProductVersion: String?

    /** A reserved field that should always be nulled. */
    public let Reserved: UnsafeMutableRawPointer?

    /**
    This field is for system specific initialization if any.

    If provided then the structure will be located in
    <System
    >/`eos_`
    <system
    >.h.
    The structure will be named `EOS_`
    <System
    >_InitializeOptions.
    */
    public let SystemInitializeOptions: UnsafeMutableRawPointer?

    /** The thread affinity override values for each category of thread. */
    public let OverrideThreadAffinity: SwiftEOS_Initialize_ThreadAffinity?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_InitializeOptions {
        try _tagEOS_InitializeOptions(
            ApiVersion: ApiVersion,
            AllocateMemoryFunction: /* TODO: */ AllocateMemoryFunction,
            ReallocateMemoryFunction: /* TODO: */ ReallocateMemoryFunction,
            ReleaseMemoryFunction: /* TODO: */ ReleaseMemoryFunction,
            ProductName: pointerManager.managedPointerToBuffer(copyingArray: ProductName?.utf8CString),
            ProductVersion: pointerManager.managedPointerToBuffer(copyingArray: ProductVersion?.utf8CString),
            Reserved: nil,
            SystemInitializeOptions: SystemInitializeOptions,
            OverrideThreadAffinity: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: OverrideThreadAffinity?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_InitializeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AllocateMemoryFunction = sdkObject.AllocateMemoryFunction
        self.ReallocateMemoryFunction = sdkObject.ReallocateMemoryFunction
        self.ReleaseMemoryFunction = sdkObject.ReleaseMemoryFunction
        self.ProductName = stringFromOptionalCStringPointer(sdkObject.ProductName)
        self.ProductVersion = stringFromOptionalCStringPointer(sdkObject.ProductVersion)
        self.Reserved = sdkObject.Reserved
        self.SystemInitializeOptions = sdkObject.SystemInitializeOptions
        self.OverrideThreadAffinity = try SwiftEOS_Initialize_ThreadAffinity.init(sdkObject: sdkObject.OverrideThreadAffinity?.pointee)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_INITIALIZE_API_LATEST`.
    - Parameter AllocateMemoryFunction: A custom memory allocator, if desired.
    - Parameter ReallocateMemoryFunction: A corresponding memory reallocator. If the AllocateMemoryFunction is nulled, then this field must also be nulled.
    - Parameter ReleaseMemoryFunction: A corresponding memory releaser. If the AllocateMemoryFunction is nulled, then this field must also be nulled.
    - Parameter ProductName: The name of the product using the Epic Online Services SDK.
    The name string is required to be non-empty and at maximum of 64 characters long.
    The string buffer can consist of the following characters:
    A-Z, a-z, 0-9, dot, underscore, space, exclamation mark, question mark, and sign, hyphen, parenthesis, plus, minus, colon.
    - Parameter ProductVersion: Product version of the running application.
    The name string has same requirements as the ProductName string.
    - Parameter Reserved: A reserved field that should always be nulled.
    - Parameter SystemInitializeOptions: This field is for system specific initialization if any.
    If provided then the structure will be located in
    <System
    >/`eos_`
    <system
    >.h.
    The structure will be named `EOS_`
    <System
    >_InitializeOptions.
    - Parameter OverrideThreadAffinity: The thread affinity override values for each category of thread.
    */
    public init(
        ApiVersion: Int32 = EOS_INITIALIZE_API_LATEST,
        AllocateMemoryFunction: EOS_AllocateMemoryFunc?,
        ReallocateMemoryFunction: EOS_ReallocateMemoryFunc?,
        ReleaseMemoryFunction: EOS_ReleaseMemoryFunc?,
        ProductName: String?,
        ProductVersion: String?,
        Reserved: UnsafeMutableRawPointer?,
        SystemInitializeOptions: UnsafeMutableRawPointer?,
        OverrideThreadAffinity: SwiftEOS_Initialize_ThreadAffinity?
    ) {
        self.ApiVersion = ApiVersion
        self.AllocateMemoryFunction = AllocateMemoryFunction
        self.ReallocateMemoryFunction = ReallocateMemoryFunction
        self.ReleaseMemoryFunction = ReleaseMemoryFunction
        self.ProductName = ProductName
        self.ProductVersion = ProductVersion
        self.Reserved = Reserved
        self.SystemInitializeOptions = SystemInitializeOptions
        self.OverrideThreadAffinity = OverrideThreadAffinity
    }
}
