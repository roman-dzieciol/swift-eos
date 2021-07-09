import Foundation
import EOSSDK

/** This struct is used to remove a user from the audio system. */
public struct SwiftEOS_RTCAudio_UnregisterPlatformAudioUserOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_UNREGISTERPLATFORMAUDIOUSER_API_LATEST.  */
    public let ApiVersion: Int32

    /** The account of a user associated with this event.  */
    public let UserId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_UnregisterPlatformAudioUserOptions {
        _tagEOS_RTCAudio_UnregisterPlatformAudioUserOptions(
            ApiVersion: ApiVersion,
            UserId: pointerManager.managedPointerToBuffer(copyingArray: UserId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_UnregisterPlatformAudioUserOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = String(cString: sdkObject.UserId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_UNREGISTERPLATFORMAUDIOUSER_API_LATEST,
        UserId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
    }
}
