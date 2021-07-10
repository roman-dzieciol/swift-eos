import Foundation
import EOSSDK

/**
 * A structure that contains an auth token.
 * These structures are created by EOS_Auth_CopyUserAuthToken and must be passed to EOS_Auth_Token_Release.
 * 
 * - see: release func: EOS_Auth_Token_Release
 */
public struct SwiftEOS_Auth_Token: SwiftEOSObject {

    /** API Version: Set this to EOS_AUTH_TOKEN_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the app related to the client ID involved with this token  */
    public let App: String?

    /** Client ID that requested this token  */
    public let ClientId: String?

    /** The Epic Online Services Account ID associated with this auth token  */
    public let AccountId: EOS_EpicAccountId?

    /** Access token for the current user login session  */
    public let AccessToken: String?

    /** Time before the access token expires, in seconds, relative to the call to EOS_Auth_CopyUserAuthToken  */
    public let ExpiresIn: Double

    /** Absolute time in UTC before the access token expires, in ISO 8601 format  */
    public let ExpiresAt: String?

    /** Type of auth token  */
    public let AuthType: EOS_EAuthTokenType

    /**
     * Refresh token.
     * 
     * @see EOS_ELoginCredentialType::EOS_LCT_RefreshToken
     */
    public let RefreshToken: String?

    /** Time before the access token expires, in seconds, relative to the call to EOS_Auth_CopyUserAuthToken  */
    public let RefreshExpiresIn: Double

    /** Absolute time in UTC before the refresh token expires, in ISO 8601 format  */
    public let RefreshExpiresAt: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Auth_Token {
        _tagEOS_Auth_Token(
            ApiVersion: ApiVersion,
            App: pointerManager.managedPointerToBuffer(copyingArray: App?.utf8CString),
            ClientId: pointerManager.managedPointerToBuffer(copyingArray: ClientId?.utf8CString),
            AccountId: AccountId,
            AccessToken: pointerManager.managedPointerToBuffer(copyingArray: AccessToken?.utf8CString),
            ExpiresIn: ExpiresIn,
            ExpiresAt: pointerManager.managedPointerToBuffer(copyingArray: ExpiresAt?.utf8CString),
            AuthType: AuthType,
            RefreshToken: pointerManager.managedPointerToBuffer(copyingArray: RefreshToken?.utf8CString),
            RefreshExpiresIn: RefreshExpiresIn,
            RefreshExpiresAt: pointerManager.managedPointerToBuffer(copyingArray: RefreshExpiresAt?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_Token?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.App = String(cString: sdkObject.App)
        self.ClientId = String(cString: sdkObject.ClientId)
        self.AccountId = sdkObject.AccountId
        self.AccessToken = String(cString: sdkObject.AccessToken)
        self.ExpiresIn = sdkObject.ExpiresIn
        self.ExpiresAt = String(cString: sdkObject.ExpiresAt)
        self.AuthType = sdkObject.AuthType
        self.RefreshToken = String(cString: sdkObject.RefreshToken)
        self.RefreshExpiresIn = sdkObject.RefreshExpiresIn
        self.RefreshExpiresAt = String(cString: sdkObject.RefreshExpiresAt)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_AUTH_TOKEN_API_LATEST. 
     * - Parameter App:  Name of the app related to the client ID involved with this token 
     * - Parameter ClientId:  Client ID that requested this token 
     * - Parameter AccountId:  The Epic Online Services Account ID associated with this auth token 
     * - Parameter AccessToken:  Access token for the current user login session 
     * - Parameter ExpiresIn:  Time before the access token expires, in seconds, relative to the call to EOS_Auth_CopyUserAuthToken 
     * - Parameter ExpiresAt:  Absolute time in UTC before the access token expires, in ISO 8601 format 
     * - Parameter AuthType:  Type of auth token 
     * - Parameter RefreshToken:  Refresh token.
     * 
     * @see EOS_ELoginCredentialType::EOS_LCT_RefreshToken
     * - Parameter RefreshExpiresIn:  Time before the access token expires, in seconds, relative to the call to EOS_Auth_CopyUserAuthToken 
     * - Parameter RefreshExpiresAt:  Absolute time in UTC before the refresh token expires, in ISO 8601 format 
     */
    public init(
        ApiVersion: Int32 = EOS_AUTH_TOKEN_API_LATEST,
        App: String?,
        ClientId: String?,
        AccountId: EOS_EpicAccountId?,
        AccessToken: String?,
        ExpiresIn: Double,
        ExpiresAt: String?,
        AuthType: EOS_EAuthTokenType,
        RefreshToken: String?,
        RefreshExpiresIn: Double,
        RefreshExpiresAt: String?
    ) {
        self.ApiVersion = ApiVersion
        self.App = App
        self.ClientId = ClientId
        self.AccountId = AccountId
        self.AccessToken = AccessToken
        self.ExpiresIn = ExpiresIn
        self.ExpiresAt = ExpiresAt
        self.AuthType = AuthType
        self.RefreshToken = RefreshToken
        self.RefreshExpiresIn = RefreshExpiresIn
        self.RefreshExpiresAt = RefreshExpiresAt
    }
}
