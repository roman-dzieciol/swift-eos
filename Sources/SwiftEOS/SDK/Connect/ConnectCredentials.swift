import Foundation
import EOSSDK

/**
A structure that contains external login credentials.

This is part of the input structure EOS_Connect_LoginOptions.

- SeeAlso: EOS_EExternalCredentialType
- SeeAlso: EOS_Connect_Login
*/
public struct SwiftEOS_Connect_Credentials: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_CREDENTIALS_API_LATEST. */
    public let ApiVersion: Int32

    /** External token associated with the user logging in. */
    public let Token: String?

    /** Type of external login; identifies the auth method to use. */
    public let `Type`: EOS_EExternalCredentialType

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_Credentials?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Token = String(cString: sdkObject.Token)
        self.`Type` = sdkObject.`Type`
    }

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_Credentials {
        _tagEOS_Connect_Credentials(
            ApiVersion: ApiVersion,
            Token: pointerManager.managedPointerToBuffer(copyingArray: Token?.utf8CString),
            `Type`: `Type`
        )
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_CONNECT_CREDENTIALS_API_LATEST.
    - Parameter Token: External token associated with the user logging in.
    - Parameter `Type`: Type of external login; identifies the auth method to use.
    */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_CREDENTIALS_API_LATEST,
        Token: String?,
        `Type`: EOS_EExternalCredentialType
    ) {
        self.ApiVersion = ApiVersion
        self.Token = Token
        self.`Type` = `Type`
    }
}
