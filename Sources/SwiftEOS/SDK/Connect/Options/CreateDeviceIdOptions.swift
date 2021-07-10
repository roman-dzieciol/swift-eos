import Foundation
import EOSSDK

/** Input parameters for the EOS_Connect_CreateDeviceId function. */
public struct SwiftEOS_Connect_CreateDeviceIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_CREATEDEVICEID_API_LATEST. */
    public let ApiVersion: Int32

    /**
    A freeform text description identifying the device type and model,which can be used in account linking management to allow the player and customer support to identify different devices linked to an EOS user keychain. For example 'iPhone 6S' or 'PC Windows'.

    The input string must be in UTF-8 character format, with a maximum length of 64 characters. Longer string will be silently truncated.

    This field is required to be present.
    */
    public let DeviceModel: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_CreateDeviceIdOptions {
        _tagEOS_Connect_CreateDeviceIdOptions(
            ApiVersion: ApiVersion,
            DeviceModel: pointerManager.managedPointerToBuffer(copyingArray: DeviceModel?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_CreateDeviceIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DeviceModel = String(cString: sdkObject.DeviceModel)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_CONNECT_CREATEDEVICEID_API_LATEST.
    - Parameter DeviceModel: A freeform text description identifying the device type and model,which can be used in account linking management to allow the player and customer support to identify different devices linked to an EOS user keychain. For example 'iPhone 6S' or 'PC Windows'.
    The input string must be in UTF-8 character format, with a maximum length of 64 characters. Longer string will be silently truncated.
    This field is required to be present.
    */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_CREATEDEVICEID_API_LATEST,
        DeviceModel: String?
    ) {
        self.ApiVersion = ApiVersion
        self.DeviceModel = DeviceModel
    }
}
