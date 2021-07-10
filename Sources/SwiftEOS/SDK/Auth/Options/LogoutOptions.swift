import Foundation
import EOSSDK

/** Input parameters for the EOS_Auth_Logout function. */
public struct SwiftEOS_Auth_LogoutOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_AUTH_LOGOUT_API_LATEST. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user who is being logged out */
    public let LocalUserId: EOS_EpicAccountId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Auth_LogoutOptions {
        _tagEOS_Auth_LogoutOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_LogoutOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_AUTH_LOGOUT_API_LATEST.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user who is being logged out
    */
    public init(
        ApiVersion: Int32 = EOS_AUTH_LOGOUT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
