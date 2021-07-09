import Foundation
import EOSSDK

/** Input parameters for the EOS_RTCAudio_GetAudioInputDevicesCount function. */
public struct SwiftEOS_RTCAudio_GetAudioInputDevicesCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_GETAUDIOINPUTDEVICESCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_GetAudioInputDevicesCountOptions {
        _tagEOS_RTCAudio_GetAudioInputDevicesCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_GetAudioInputDevicesCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_GETAUDIOINPUTDEVICESCOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
