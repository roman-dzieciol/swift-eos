import Foundation
import EOSSDK

/** This struct is used to get information about a specific input device. */
public struct SwiftEOS_RTCAudio_AudioOutputDeviceInfo {

    /** API Version: Set this to EOS_RTCAUDIO_AUDIOOUTPUTDEVICEINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** True if this is the default audio input device in the system.  */
    public let bDefaultDevice: Bool

    /**
     * 
     *  The persistent unique id of the device.
     */
    public let DeviceId: String?

    /** The name of the device */
    public let DeviceName: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AudioOutputDeviceInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.bDefaultDevice = try swiftBoolFromEosBool(sdkObject.bDefaultDevice)
        self.DeviceId = String(cString: sdkObject.DeviceId)
        self.DeviceName = String(cString: sdkObject.DeviceName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_AUDIOOUTPUTDEVICEINFO_API_LATEST,
        bDefaultDevice: Bool,
        DeviceId: String?,
        DeviceName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.bDefaultDevice = bDefaultDevice
        self.DeviceId = DeviceId
        self.DeviceName = DeviceName
    }
}
