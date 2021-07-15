import Foundation
import EOSSDK


/** Input parameters for the `EOS_Auth_AddNotifyLoginStatusChanged` Function. */
public struct SwiftEOS_Auth_AddNotifyLoginStatusChangedOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_AUTH_ADDNOTIFYLOGINSTATUSCHANGED_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Auth_AddNotifyLoginStatusChangedOptions {
        _tagEOS_Auth_AddNotifyLoginStatusChangedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_AddNotifyLoginStatusChangedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_AUTH_ADDNOTIFYLOGINSTATUSCHANGED_API_LATEST`.
    */
    public init(
        ApiVersion: Int32 = EOS_AUTH_ADDNOTIFYLOGINSTATUSCHANGED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
