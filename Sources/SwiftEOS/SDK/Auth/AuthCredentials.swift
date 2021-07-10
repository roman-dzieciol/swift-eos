import Foundation
import EOSSDK

/**
 * A structure that contains login credentials. What is required is dependent on the type of login being initiated.
 * This is part of the input structure EOS_Auth_LoginOptions and related to device auth.
 * Use of the ID and Token fields differs based on the Type. They should be null, unless specified:
 * EOS_LCT_Password - ID is the email address, and Token is the password.
 * EOS_LCT_ExchangeCode - Token is the exchange code.
 * EOS_LCT_PersistentAuth - If targeting console platforms, Token is the long lived refresh token. Otherwise N/A.
 * EOS_LCT_DeviceCode - N/A.
 * EOS_LCT_Developer - ID is the host (e.g. localhost:6547), and Token is the credential name registered in the EOS Developer Authentication Tool.
 * EOS_LCT_RefreshToken - Token is the refresh token.
 * EOS_LCT_AccountPortal - SystemAuthCredentialsOptions may be required if targeting mobile platforms. Otherwise N/A.
 * EOS_LCT_ExternalAuth - Token is the external auth token specified by ExternalType.
 * 
 * @see EOS_ELoginCredentialType
 * @see EOS_Auth_Login
 * @see EOS_Auth_DeletePersistentAuthOptions
 */
public struct SwiftEOS_Auth_Credentials: SwiftEOSObject {

    /** API Version: Set this to EOS_AUTH_CREDENTIALS_API_LATEST.  */
    public let ApiVersion: Int32

    /** ID of the user logging in, based on EOS_ELoginCredentialType  */
    public let Id: String?

    /** Credentials or token related to the user logging in  */
    public let Token: String?

    /** Type of login. Needed to identify the auth method to use  */
    public let `Type`: EOS_ELoginCredentialType

    /**
     * 
     * This field is for system specific options, if any.
     * If provided, the structure will be located in (System)/eos_(system).h.
     * The structure will be named EOS_(System)_Auth_CredentialsOptions.
     */
    public let SystemAuthCredentialsOptions: UnsafeMutableRawPointer?

    /**
     * Type of external login. Needed to identify the external auth method to use.
     * Used when login type is set to EOS_LCT_ExternalAuth, ignored for other EOS_ELoginCredentialType methods.
     */
    public let ExternalType: EOS_EExternalCredentialType

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_Credentials?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Id = String(cString: sdkObject.Id)
        self.Token = String(cString: sdkObject.Token)
        self.`Type` = sdkObject.`Type`
        self.SystemAuthCredentialsOptions = sdkObject.SystemAuthCredentialsOptions
        self.ExternalType = sdkObject.ExternalType
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Auth_Credentials {
        _tagEOS_Auth_Credentials(
            ApiVersion: ApiVersion,
            Id: pointerManager.managedPointerToBuffer(copyingArray: Id?.utf8CString),
            Token: pointerManager.managedPointerToBuffer(copyingArray: Token?.utf8CString),
            `Type`: `Type`,
            SystemAuthCredentialsOptions: SystemAuthCredentialsOptions,
            ExternalType: ExternalType
        )
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_AUTH_CREDENTIALS_API_LATEST. 
     * - Parameter Id:  ID of the user logging in, based on EOS_ELoginCredentialType 
     * - Parameter Token:  Credentials or token related to the user logging in 
     * - Parameter `Type`:  Type of login. Needed to identify the auth method to use 
     * - Parameter SystemAuthCredentialsOptions:  
     * This field is for system specific options, if any.
     * If provided, the structure will be located in (System)/eos_(system).h.
     * The structure will be named EOS_(System)_Auth_CredentialsOptions.
     * - Parameter ExternalType:  Type of external login. Needed to identify the external auth method to use.
     * Used when login type is set to EOS_LCT_ExternalAuth, ignored for other EOS_ELoginCredentialType methods.
     */
    public init(
        ApiVersion: Int32 = EOS_AUTH_CREDENTIALS_API_LATEST,
        Id: String?,
        Token: String?,
        `Type`: EOS_ELoginCredentialType,
        SystemAuthCredentialsOptions: UnsafeMutableRawPointer?,
        ExternalType: EOS_EExternalCredentialType
    ) {
        self.ApiVersion = ApiVersion
        self.Id = Id
        self.Token = Token
        self.`Type` = `Type`
        self.SystemAuthCredentialsOptions = SystemAuthCredentialsOptions
        self.ExternalType = ExternalType
    }
}
