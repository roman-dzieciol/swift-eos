import Foundation
import EOSSDK


/** This struct is used to inform the audio system of a user. */
public struct SwiftEOS_RTCAudio_RegisterPlatformAudioUserOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_RTCAUDIO_REGISTERPLATFORMAUDIOUSER_API_LATEST`. */
    public let ApiVersion: Int32

    /** Platform dependent user id. */
    public let UserId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_RegisterPlatformAudioUserOptions {
        _tagEOS_RTCAudio_RegisterPlatformAudioUserOptions(
            ApiVersion: ApiVersion,
            UserId: pointerManager.managedPointerToBuffer(copyingArray: UserId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_RegisterPlatformAudioUserOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = stringFromOptionalCStringPointer(sdkObject.UserId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_RTCAUDIO_REGISTERPLATFORMAUDIOUSER_API_LATEST`.
    - Parameter UserId: Platform dependent user id.
    */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_REGISTERPLATFORMAUDIOUSER_API_LATEST,
        UserId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
    }
}
