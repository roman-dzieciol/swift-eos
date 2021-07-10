import Foundation
import EOSSDK

/** This struct is used to call EOS_RTCAudio_AddNotifyAudioDevicesChanged. */
public struct SwiftEOS_RTCAudio_AddNotifyAudioDevicesChangedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_ADDNOTIFYAUDIODEVICESCHANGED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_AddNotifyAudioDevicesChangedOptions {
        _tagEOS_RTCAudio_AddNotifyAudioDevicesChangedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AddNotifyAudioDevicesChangedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_RTCAUDIO_ADDNOTIFYAUDIODEVICESCHANGED_API_LATEST. 
     */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_ADDNOTIFYAUDIODEVICESCHANGED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
