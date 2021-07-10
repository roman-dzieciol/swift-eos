import Foundation
import EOSSDK

/** Input parameters for the EOS_Auth_DeletePersistentAuth function. */
public struct SwiftEOS_Auth_DeletePersistentAuthOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_AUTH_DELETEPERSISTENTAUTH_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * A long-lived refresh token that is used with the EOS_LCT_PersistentAuth login type and is to be revoked from the authentication server. Only used on Console platforms.
     * On Desktop and Mobile platforms, set this parameter to NULL.
     */
    public let RefreshToken: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Auth_DeletePersistentAuthOptions {
        _tagEOS_Auth_DeletePersistentAuthOptions(
            ApiVersion: ApiVersion,
            RefreshToken: pointerManager.managedPointerToBuffer(copyingArray: RefreshToken?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_DeletePersistentAuthOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RefreshToken = String(cString: sdkObject.RefreshToken)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_AUTH_DELETEPERSISTENTAUTH_API_LATEST. 
     * - Parameter RefreshToken:  A long-lived refresh token that is used with the EOS_LCT_PersistentAuth login type and is to be revoked from the authentication server. Only used on Console platforms.
     * On Desktop and Mobile platforms, set this parameter to NULL.
     */
    public init(
        ApiVersion: Int32 = EOS_AUTH_DELETEPERSISTENTAUTH_API_LATEST,
        RefreshToken: String?
    ) {
        self.ApiVersion = ApiVersion
        self.RefreshToken = RefreshToken
    }
}
