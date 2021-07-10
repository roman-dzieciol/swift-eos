import Foundation
import EOSSDK

/** Structure containing information or the connect user login status change callback. */
public struct SwiftEOS_Connect_AddNotifyLoginStatusChangedOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_CONNECT_ADDNOTIFYLOGINSTATUSCHANGED_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_AddNotifyLoginStatusChangedOptions {
        _tagEOS_Connect_AddNotifyLoginStatusChangedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_AddNotifyLoginStatusChangedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_CONNECT_ADDNOTIFYLOGINSTATUSCHANGED_API_LATEST`.
    */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_ADDNOTIFYLOGINSTATUSCHANGED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
