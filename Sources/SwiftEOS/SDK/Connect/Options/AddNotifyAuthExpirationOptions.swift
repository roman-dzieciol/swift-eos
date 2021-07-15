import Foundation
import EOSSDK


/** Structure containing information for the auth expiration notification callback. */
public struct SwiftEOS_Connect_AddNotifyAuthExpirationOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_CONNECT_ADDNOTIFYAUTHEXPIRATION_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_AddNotifyAuthExpirationOptions {
        _tagEOS_Connect_AddNotifyAuthExpirationOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_AddNotifyAuthExpirationOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_CONNECT_ADDNOTIFYAUTHEXPIRATION_API_LATEST`.
    */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_ADDNOTIFYAUTHEXPIRATION_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
