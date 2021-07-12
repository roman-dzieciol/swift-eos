import Foundation
import EOSSDK

/** This struct is used to call `EOS_RTCAudio_SetAudioInputSettings`. */
public struct SwiftEOS_RTCAudio_SetAudioInputSettingsOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_RTCAUDIO_SETAUDIOINPUTSETTINGS_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation. */
    public let LocalUserId: EOS_ProductUserId?

    /** The device Id to be used for this user. Pass NULL or empty string to use default input device. */
    public let DeviceId: String?

    /**
    The volume to be configured for this device (range 0.0 to 100.0).
    At the moment, the only value that produce any effect is 0.0 (silence). Any other value is ignored and causes no change to the volume.
    */
    public let Volume: Float

    /** Enable or disable Platform AEC (Acoustic Echo Cancellation) if available. */
    public let bPlatformAEC: Bool

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_SetAudioInputSettingsOptions {
        _tagEOS_RTCAudio_SetAudioInputSettingsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            DeviceId: pointerManager.managedPointerToBuffer(copyingArray: DeviceId?.utf8CString),
            Volume: Volume,
            bPlatformAEC: eosBoolFromSwiftBool(bPlatformAEC)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_SetAudioInputSettingsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.DeviceId = stringFromOptionalCStringPointer(sdkObject.DeviceId)
        self.Volume = sdkObject.Volume
        self.bPlatformAEC = try swiftBoolFromEosBool(sdkObject.bPlatformAEC)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_RTCAUDIO_SETAUDIOINPUTSETTINGS_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the user trying to request this operation.
    - Parameter DeviceId: The device Id to be used for this user. Pass NULL or empty string to use default input device.
    - Parameter Volume: The volume to be configured for this device (range 0.0 to 100.0).
    At the moment, the only value that produce any effect is 0.0 (silence). Any other value is ignored and causes no change to the volume.
    - Parameter bPlatformAEC: Enable or disable Platform AEC (Acoustic Echo Cancellation) if available.
    */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_SETAUDIOINPUTSETTINGS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        DeviceId: String?,
        Volume: Float,
        bPlatformAEC: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.DeviceId = DeviceId
        self.Volume = Volume
        self.bPlatformAEC = bPlatformAEC
    }
}
