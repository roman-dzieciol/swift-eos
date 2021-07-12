import Foundation
import EOSSDK

/** This struct is used to call `EOS_RTCAudio_SetAudioOutputSettings`. */
public struct SwiftEOS_RTCAudio_SetAudioOutputSettingsOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_RTCAUDIO_SETAUDIOOUTPUTSETTINGS_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the user who initiated this request. */
    public let LocalUserId: EOS_ProductUserId?

    /** The device Id to be used for this user. Pass NULL or empty string to use default output device. */
    public let DeviceId: String?

    /**
    The volume to be configured for this device (range 0.0 to 100.0). Volume 50 means that the audio volume is not modified
    and stays in its source value.
    */
    public let Volume: Float

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_SetAudioOutputSettingsOptions {
        _tagEOS_RTCAudio_SetAudioOutputSettingsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            DeviceId: pointerManager.managedPointerToBuffer(copyingArray: DeviceId?.utf8CString),
            Volume: Volume
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_SetAudioOutputSettingsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.DeviceId = stringFromOptionalCStringPointer(sdkObject.DeviceId)
        self.Volume = sdkObject.Volume
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_RTCAUDIO_SETAUDIOOUTPUTSETTINGS_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the user who initiated this request.
    - Parameter DeviceId: The device Id to be used for this user. Pass NULL or empty string to use default output device.
    - Parameter Volume: The volume to be configured for this device (range 0.0 to 100.0). Volume 50 means that the audio volume is not modified
    and stays in its source value.
    */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_SETAUDIOOUTPUTSETTINGS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        DeviceId: String?,
        Volume: Float
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.DeviceId = DeviceId
        self.Volume = Volume
    }
}
