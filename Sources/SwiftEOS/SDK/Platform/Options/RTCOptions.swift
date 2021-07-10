import Foundation
import EOSSDK

/** Platform RTC options. */
public struct SwiftEOS_Platform_RTCOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_PLATFORM_RTCOPTIONS_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    This field is for platform specific initialization if any.

    If provided then the structure will be located in
    <System
    >/`eos_`
    <System
    >.h.
    The structure will be named `EOS_`
    <System
    >_RTCOptions.
    */
    public let PlatformSpecificOptions: UnsafeMutableRawPointer?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Platform_RTCOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PlatformSpecificOptions = sdkObject.PlatformSpecificOptions
    }

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Platform_RTCOptions {
        _tagEOS_Platform_RTCOptions(
            ApiVersion: ApiVersion,
            PlatformSpecificOptions: /* TODO: */ PlatformSpecificOptions
        )
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_PLATFORM_RTCOPTIONS_API_LATEST`.
    - Parameter PlatformSpecificOptions: This field is for platform specific initialization if any.
    If provided then the structure will be located in
    <System
    >/`eos_`
    <System
    >.h.
    The structure will be named `EOS_`
    <System
    >_RTCOptions.
    */
    public init(
        ApiVersion: Int32 = EOS_PLATFORM_RTCOPTIONS_API_LATEST,
        PlatformSpecificOptions: UnsafeMutableRawPointer?
    ) {
        self.ApiVersion = ApiVersion
        self.PlatformSpecificOptions = PlatformSpecificOptions
    }
}
