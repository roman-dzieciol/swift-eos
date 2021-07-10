import Foundation
import EOSSDK

/** Input parameters for the `EOS_RTCAudio_GetAudioOutputDeviceByIndex` function. */
public struct SwiftEOS_RTCAudio_GetAudioOutputDeviceByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_RTCAUDIO_GETAUDIOOUTPUTDEVICEBYINDEX_API_LATEST`. */
    public let ApiVersion: Int32

    /** Index of the device info to retrieve. */
    public let DeviceInfoIndex: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_GetAudioOutputDeviceByIndexOptions {
        try _tagEOS_RTCAudio_GetAudioOutputDeviceByIndexOptions(
            ApiVersion: ApiVersion,
            DeviceInfoIndex: try safeNumericCast(exactly: DeviceInfoIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_GetAudioOutputDeviceByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DeviceInfoIndex = try safeNumericCast(exactly: sdkObject.DeviceInfoIndex)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_RTCAUDIO_GETAUDIOOUTPUTDEVICEBYINDEX_API_LATEST`.
    - Parameter DeviceInfoIndex: Index of the device info to retrieve.
    */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_GETAUDIOOUTPUTDEVICEBYINDEX_API_LATEST,
        DeviceInfoIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.DeviceInfoIndex = DeviceInfoIndex
    }
}
