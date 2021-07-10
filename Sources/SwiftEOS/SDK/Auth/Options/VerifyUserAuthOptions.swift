import Foundation
import EOSSDK

/**
Input parameters for the EOS_Auth_VerifyUserAuth function.This operation is destructive, the pointer will remain the same but the data pointers inside will update
*/
public struct SwiftEOS_Auth_VerifyUserAuthOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_AUTH_VERIFYUSERAUTH_API_LATEST. */
    public let ApiVersion: Int32

    /** Auth token to verify against the backend service */
    public let AuthToken: SwiftEOS_Auth_Token?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Auth_VerifyUserAuthOptions {
        try _tagEOS_Auth_VerifyUserAuthOptions(
            ApiVersion: ApiVersion,
            AuthToken: try pointerManager.managedPointer(copyingValueOrNilPointer: AuthToken?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_VerifyUserAuthOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AuthToken = try SwiftEOS_Auth_Token.init(sdkObject: sdkObject.AuthToken.pointee)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_AUTH_VERIFYUSERAUTH_API_LATEST.
    - Parameter AuthToken: Auth token to verify against the backend service
    */
    public init(
        ApiVersion: Int32 = EOS_AUTH_VERIFYUSERAUTH_API_LATEST,
        AuthToken: SwiftEOS_Auth_Token?
    ) {
        self.ApiVersion = ApiVersion
        self.AuthToken = AuthToken
    }
}
