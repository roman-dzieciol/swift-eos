import Foundation
import EOSSDK

/**
 * Intermediate data needed to complete account restriction verification during login flow, returned by EOS_Auth_LoginCallbackInfo when the ResultCode is EOS_Auth_AccountFeatureRestricted
 * The URI inside should be exposed to the user for entry in a web browser. The URI must be copied out of this struct before completion of the callback.
 */
public struct SwiftEOS_Auth_AccountFeatureRestrictedInfo {

    /** API Version: Set this to EOS_AUTH_ACCOUNTFEATURERESTRICTEDINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The end-user verification URI. Users must be asked to open the page in a browser to address the restrictions  */
    public let VerificationURI: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_AccountFeatureRestrictedInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.VerificationURI = String(cString: sdkObject.VerificationURI)
    }
}

/** Input parameters for the EOS_Auth_AddNotifyLoginStatusChanged Function. */
public struct SwiftEOS_Auth_AddNotifyLoginStatusChangedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_AUTH_ADDNOTIFYLOGINSTATUSCHANGED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_AUTH_ADDNOTIFYLOGINSTATUSCHANGED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_Auth_CopyUserAuthToken function. */
public struct SwiftEOS_Auth_CopyUserAuthTokenOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_AUTH_COPYUSERAUTHTOKEN_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Auth_CopyUserAuthTokenOptions {
        _tagEOS_Auth_CopyUserAuthTokenOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_CopyUserAuthTokenOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_AUTH_COPYUSERAUTHTOKEN_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

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

    /** Memberwise initializer */
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

/** Output parameters for the EOS_Auth_DeletePersistentAuth Function. */
public struct SwiftEOS_Auth_DeletePersistentAuthCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_DeletePersistentAuthCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Auth_DeletePersistentAuthCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

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

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_AUTH_DELETEPERSISTENTAUTH_API_LATEST,
        RefreshToken: String?
    ) {
        self.ApiVersion = ApiVersion
        self.RefreshToken = RefreshToken
    }
}

/** Output parameters for the EOS_Auth_LinkAccount Function. */
public struct SwiftEOS_Auth_LinkAccountCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user whose account has been linked during login  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * Optional data returned when ResultCode is EOS_Auth_PinGrantCode.
     * Once the user has logged in with their Epic Online Services account, the account will be linked with the external account supplied when EOS_Auth_Login was called.
     * EOS_Auth_OnLinkAccountCallback will be fired again with ResultCode in EOS_Auth_LinkAccountCallbackInfo set to EOS_Success.
     */
    public let PinGrantInfo: SwiftEOS_Auth_PinGrantInfo?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_LinkAccountCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.PinGrantInfo = try SwiftEOS_Auth_PinGrantInfo.init(sdkObject: sdkObject.PinGrantInfo?.pointee)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Auth_LinkAccountCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Auth_LinkAccount function. */
public struct SwiftEOS_Auth_LinkAccountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_AUTH_LINKACCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Combination of the enumeration flags to specify how the account linking operation will be performed. */
    public let LinkAccountFlags: EOS_ELinkAccountFlags

    /**
     * 
     * Continuance token received from a previous call to the EOS_Auth_Login API.
     * A continuance token is received in the case when the external account used for login was not found to be linked
     * against any existing Epic Account. In such case, the application needs to proceed with an account linking operation in which case
     * the user is first asked to create a new account or login into their existing Epic Account, and then link their external account to it.
     * Alternatively, the application may suggest the user to login using another external account that they have already linked to their existing Epic Account.
     * In this flow, the external account is typically the currently logged in local platform user account.
     * It can also be another external user account that the user is offered to login with.
     */
    public let ContinuanceToken: EOS_ContinuanceToken?

    /**
     * The Epic Online Services Account ID of the logged in local user whose Epic Account will be linked with the local Nintendo NSA ID Account. By default set to NULL.
     * This parameter is only used and required to be set when EOS_ELinkAccountFlags::EOS_LA_NintendoNsaId is specified.
     * Otherwise, set to NULL, as the standard account linking and login flow using continuance token will handle logging in the user to their Epic Account.
     */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Auth_LinkAccountOptions {
        _tagEOS_Auth_LinkAccountOptions(
            ApiVersion: ApiVersion,
            LinkAccountFlags: LinkAccountFlags,
            ContinuanceToken: ContinuanceToken,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_LinkAccountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LinkAccountFlags = sdkObject.LinkAccountFlags
        self.ContinuanceToken = sdkObject.ContinuanceToken
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_AUTH_LINKACCOUNT_API_LATEST,
        LinkAccountFlags: EOS_ELinkAccountFlags,
        ContinuanceToken: EOS_ContinuanceToken?,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LinkAccountFlags = LinkAccountFlags
        self.ContinuanceToken = ContinuanceToken
        self.LocalUserId = LocalUserId
    }
}

/** Output parameters for the EOS_Auth_Login Function. */
public struct SwiftEOS_Auth_LoginCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user who has logged in  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Optional data returned in the middle of a EOS_LCT_DeviceCode request  */
    public let PinGrantInfo: SwiftEOS_Auth_PinGrantInfo?

    /** If the user was not found with external auth credentials passed into EOS_Auth_Login, this continuance token can be passed to EOS_Auth_LinkAccount to continue the flow.  */
    public let ContinuanceToken: EOS_ContinuanceToken?

    /** If the user trying to login is restricted from doing so, the ResultCode of this structure will be EOS_Auth_AccountFeatureRestricted, and AccountFeatureRestrictedInfo will be populated with the data needed to get past the restriction  */
    public let AccountFeatureRestrictedInfo: SwiftEOS_Auth_AccountFeatureRestrictedInfo?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_LoginCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.PinGrantInfo = try SwiftEOS_Auth_PinGrantInfo.init(sdkObject: sdkObject.PinGrantInfo?.pointee)
        self.ContinuanceToken = sdkObject.ContinuanceToken
        self.AccountFeatureRestrictedInfo = try SwiftEOS_Auth_AccountFeatureRestrictedInfo.init(sdkObject: sdkObject.AccountFeatureRestrictedInfo?.pointee)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Auth_LoginCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Auth_Login function. */
public struct SwiftEOS_Auth_LoginOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_AUTH_LOGIN_API_LATEST.  */
    public let ApiVersion: Int32

    /** Credentials specified for a given login method  */
    public let Credentials: SwiftEOS_Auth_Credentials?

    /** Auth scope flags are permissions to request from the user while they are logging in. This is a bitwise-or union of EOS_EAuthScopeFlags flags defined above  */
    public let ScopeFlags: EOS_EAuthScopeFlags

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Auth_LoginOptions {
        try _tagEOS_Auth_LoginOptions(
            ApiVersion: ApiVersion,
            Credentials: try pointerManager.managedPointer(copyingValueOrNilPointer: Credentials?.buildSdkObject(pointerManager: pointerManager)),
            ScopeFlags: ScopeFlags
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_LoginOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Credentials = try SwiftEOS_Auth_Credentials.init(sdkObject: sdkObject.Credentials?.pointee)
        self.ScopeFlags = sdkObject.ScopeFlags
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_AUTH_LOGIN_API_LATEST,
        Credentials: SwiftEOS_Auth_Credentials?,
        ScopeFlags: EOS_EAuthScopeFlags
    ) {
        self.ApiVersion = ApiVersion
        self.Credentials = Credentials
        self.ScopeFlags = ScopeFlags
    }
}

/** Output parameters for the EOS_Auth_OnLoginStatusChangedCallback Function. */
public struct SwiftEOS_Auth_LoginStatusChangedCallbackInfo {

    /** The Epic Online Services Account ID of the local user whose status has changed  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The status prior to the change  */
    public let PrevStatus: EOS_ELoginStatus

    /** The status at the time of the notification  */
    public let CurrentStatus: EOS_ELoginStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_LoginStatusChangedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.PrevStatus = sdkObject.PrevStatus
        self.CurrentStatus = sdkObject.CurrentStatus
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Auth_LoginStatusChangedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Output parameters for the EOS_Auth_Logout Function. */
public struct SwiftEOS_Auth_LogoutCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user requesting the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_LogoutCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Auth_LogoutCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Auth_Logout function. */
public struct SwiftEOS_Auth_LogoutOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_AUTH_LOGOUT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user who is being logged out  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_AUTH_LOGOUT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/**
 * Intermediate data needed to complete the EOS_LCT_DeviceCode and EOS_LCT_ExternalAuth login flows, returned by EOS_Auth_LoginCallbackInfo.  
 * The data inside should be exposed to the user for entry on a secondary device.
 * All data must be copied out before the completion of this callback.
 */
public struct SwiftEOS_Auth_PinGrantInfo {

    /** API Version: Set this to EOS_AUTH_PINGRANTINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** Code the user must input on an external device to activate the login  */
    public let UserCode: String?

    /** The end-user verification URI. Users can be asked to manually type this into their browser.  */
    public let VerificationURI: String?

    /** Time the user has, in seconds, to complete the process or else timeout  */
    public let ExpiresIn: Int

    /** A verification URI that includes the user code. Useful for non-textual transmission.  */
    public let VerificationURIComplete: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_PinGrantInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserCode = String(cString: sdkObject.UserCode)
        self.VerificationURI = String(cString: sdkObject.VerificationURI)
        self.ExpiresIn = try safeNumericCast(exactly: sdkObject.ExpiresIn)
        self.VerificationURIComplete = String(cString: sdkObject.VerificationURIComplete)
    }
}

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

    /** Memberwise initializer */
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

/** Output parameters for the EOS_Auth_VerifyUserAuth Function. */
public struct SwiftEOS_Auth_VerifyUserAuthCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_VerifyUserAuthCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Auth_VerifyUserAuthCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/**
 * Input parameters for the EOS_Auth_VerifyUserAuth function.
 * This operation is destructive, the pointer will remain the same but the data pointers inside will update
 */
public struct SwiftEOS_Auth_VerifyUserAuthOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_AUTH_VERIFYUSERAUTH_API_LATEST.  */
    public let ApiVersion: Int32

    /** Auth token to verify against the backend service  */
    public let AuthToken: SwiftEOS_Auth_Token?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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
        self.AuthToken = try SwiftEOS_Auth_Token.init(sdkObject: sdkObject.AuthToken?.pointee)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_AUTH_VERIFYUSERAUTH_API_LATEST,
        AuthToken: SwiftEOS_Auth_Token?
    ) {
        self.ApiVersion = ApiVersion
        self.AuthToken = AuthToken
    }
}
