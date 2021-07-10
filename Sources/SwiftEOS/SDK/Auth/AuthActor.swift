import Foundation
import EOSSDK
public class SwiftEOS_Auth_Actor: SwiftEOSActor {
    public let Handle: EOS_HAuth

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HAuth
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Register to receive login status updates.
     * 
     * - Note:  must call RemoveNotifyLoginStatusChanged to remove the notification
     * 
     * - Parameter Notification:  a callback that is fired when the login status for a user changes
     * 
     * - Returns:  handle representing the registered callback
     */
    public func AddNotifyLoginStatusChanged(
        Notification: @escaping (SwiftEOS_Auth_LoginStatusChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Auth_LoginStatusChangedCallbackInfo> {
        try ____AddNotifyLoginStatusChanged(Notification)
    }

    /**
     * Fetches a user auth token for an Epic Online Services Account ID.
     * 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the user being queried
     * 
     * - SeeAlso:  EOS_Auth_Token_Release
     * 
     * - Returns:  EOS_Success if the information is available and passed out in OutUserAuthToken
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the auth token is not found or expired.
     * 
     */
    public func CopyUserAuthToken(
        LocalUserId: EOS_EpicAccountId
    ) throws -> SwiftEOS_Auth_Token? {
        try ____CopyUserAuthToken(LocalUserId)
    }

    /**
     * Deletes a previously received and locally stored persistent auth access token for the currently logged in user of the local device.
     * On Desktop and Mobile platforms, the access token is deleted from the keychain of the local user and a backend request is made to revoke the token on the authentication server.
     * On Console platforms, even though the caller is responsible for storing and deleting the access token on the local device,
     * this function should still be called with the access token before its deletion to make the best effort in attempting to also revoke it on the authentication server.
     * If the function would fail on Console, the caller should still proceed as normal to delete the access token locally as intended.
     * 
     * - Parameter RefreshToken:  A long-lived refresh token that is used with the EOS_LCT_PersistentAuth login type and is to be revoked from the authentication server. Only used on Console platforms.
     * On Desktop and Mobile platforms, set this parameter to NULL.
     * - Parameter CompletionDelegate:  a callback that is fired when the deletion operation completes, either successfully or in error
     */
    public func DeletePersistentAuth(
        RefreshToken: String?,
        CompletionDelegate: @escaping (SwiftEOS_Auth_DeletePersistentAuthCallbackInfo) -> Void
    ) throws {
        try ____DeletePersistentAuth(
            .init(RefreshToken: RefreshToken),
            CompletionDelegate
        )
    }

    /**
     * Fetch an Epic Online Services Account ID that is logged in.
     * 
     * - Parameter Index:  An index into the list of logged in accounts. If the index is out of bounds, the returned Epic Online Services Account ID will be invalid.
     * 
     * - Returns:  The Epic Online Services Account ID associated with the index passed
     */
    public func GetLoggedInAccountByIndex(
        Index: Int
    ) throws -> EOS_EpicAccountId {
        try ____GetLoggedInAccountByIndex(Index)
    }

    /**
     * Fetch the number of accounts that are logged in.
     * 
     * - Returns:  the number of accounts logged in.
     */
    public func GetLoggedInAccountsCount() throws -> Int {
        try ____GetLoggedInAccountsCount()
    }

    /**
     * Fetches the login status for an Epic Online Services Account ID.
     * 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the user being queried
     * 
     * - Returns:  The enum value of a user's login status
     */
    public func GetLoginStatus(
        LocalUserId: EOS_EpicAccountId
    ) -> EOS_ELoginStatus {
        ____GetLoginStatus(LocalUserId)
    }

    /**
     * Link external account by continuing previous login attempt with a continuance token.
     * On Desktop and Mobile platforms, the user will be presented the Epic Account Portal to resolve their identity.
     * On Console, the user will login to their Epic Account using an external device, e.g. a mobile device or a desktop PC,
     * by browsing to the presented authentication URL and entering the device code presented by the game on the console.
     * On success, the user will be logged in at the completion of this action.
     * This will commit this external account to the Epic Account and cannot be undone in the SDK.
     * 
     * - Parameter LinkAccountFlags:  Combination of the enumeration flags to specify how the account linking operation will be performed.
     * - Parameter ContinuanceToken:  
     * Continuance token received from a previous call to the EOS_Auth_Login API.
     * A continuance token is received in the case when the external account used for login was not found to be linked
     * against any existing Epic Account. In such case, the application needs to proceed with an account linking operation in which case
     * the user is first asked to create a new account or login into their existing Epic Account, and then link their external account to it.
     * Alternatively, the application may suggest the user to login using another external account that they have already linked to their existing Epic Account.
     * In this flow, the external account is typically the currently logged in local platform user account.
     * It can also be another external user account that the user is offered to login with.
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the logged in local user whose Epic Account will be linked with the local Nintendo NSA ID Account. By default set to NULL.
     * This parameter is only used and required to be set when EOS_ELinkAccountFlags::EOS_LA_NintendoNsaId is specified.
     * Otherwise, set to NULL, as the standard account linking and login flow using continuance token will handle logging in the user to their Epic Account.
     * - Parameter CompletionDelegate:  a callback that is fired when the link account operation completes, either successfully or in error
     */
    public func LinkAccount(
        LinkAccountFlags: EOS_ELinkAccountFlags,
        ContinuanceToken: EOS_ContinuanceToken?,
        LocalUserId: EOS_EpicAccountId?,
        CompletionDelegate: @escaping (SwiftEOS_Auth_LinkAccountCallbackInfo) -> Void
    ) throws {
        try ____LinkAccount(
            .init(
                LinkAccountFlags: LinkAccountFlags,
                ContinuanceToken: ContinuanceToken,
                LocalUserId: LocalUserId
            ),
            CompletionDelegate
        )
    }

    /**
     * Login/Authenticate with user credentials.
     * 
     * - Parameter Credentials:  Credentials specified for a given login method 
     * - Parameter ScopeFlags:  Auth scope flags are permissions to request from the user while they are logging in. This is a bitwise-or union of EOS_EAuthScopeFlags flags defined above 
     * - Parameter CompletionDelegate:  a callback that is fired when the login operation completes, either successfully or in error
     */
    public func Login(
        Credentials: SwiftEOS_Auth_Credentials?,
        ScopeFlags: EOS_EAuthScopeFlags,
        CompletionDelegate: @escaping (SwiftEOS_Auth_LoginCallbackInfo) -> Void
    ) throws {
        try ____Login(
            .init(
                Credentials: Credentials,
                ScopeFlags: ScopeFlags
            ),
            CompletionDelegate
        )
    }

    /**
     * Signs the player out of the online service.
     * 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the local user who is being logged out 
     * - Parameter CompletionDelegate:  a callback that is fired when the logout operation completes, either successfully or in error
     */
    public func Logout(
        LocalUserId: EOS_EpicAccountId?,
        CompletionDelegate: @escaping (SwiftEOS_Auth_LogoutCallbackInfo) -> Void
    ) throws {
        try ____Logout(
            .init(LocalUserId: LocalUserId),
            CompletionDelegate
        )
    }

    /**
     * Contact the backend service to verify validity of an existing user auth token.
     * This function is intended for server-side use only.
     * 
     * - Parameter AuthToken:  Auth token to verify against the backend service 
     * - Parameter CompletionDelegate:  a callback that is fired when the logout operation completes, either successfully or in error
     */
    public func VerifyUserAuth(
        AuthToken: SwiftEOS_Auth_Token?,
        CompletionDelegate: @escaping (SwiftEOS_Auth_VerifyUserAuthCallbackInfo) -> Void
    ) throws {
        try ____VerifyUserAuth(
            .init(AuthToken: AuthToken),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_Auth_Actor {

    /**
     * Register to receive login status updates.
     * 
     * - Note:  must call RemoveNotifyLoginStatusChanged to remove the notification
     * 
     * - Parameter Notification:  a callback that is fired when the login status for a user changes
     * 
     * - Returns:  handle representing the registered callback
     */
    private func ____AddNotifyLoginStatusChanged(
        _ Notification: @escaping (SwiftEOS_Auth_LoginStatusChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Auth_LoginStatusChangedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: Notification,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Auth_AddNotifyLoginStatusChangedOptions(), managedBy: pointerManager) { Options in
                        EOS_Auth_AddNotifyLoginStatusChanged(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Auth_LoginStatusChangedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Auth_RemoveNotifyLoginStatusChanged(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Fetches a user auth token for an Epic Online Services Account ID.
     * 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the user being queried
     * 
     * - SeeAlso:  EOS_Auth_Token_Release
     * 
     * - Returns:  EOS_Success if the information is available and passed out in OutUserAuthToken
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the auth token is not found or expired.
     * 
     */
    private func ____CopyUserAuthToken(
        _ LocalUserId: EOS_EpicAccountId
    ) throws -> SwiftEOS_Auth_Token? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutUserAuthToken in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Auth_CopyUserAuthTokenOptions(), managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Auth_CopyUserAuthToken(
                                Handle,
                                Options,
                                LocalUserId,
                                OutUserAuthToken
                            ) } } },
                release: EOS_Auth_Token_Release
            ) }
    }

    /**
     * Deletes a previously received and locally stored persistent auth access token for the currently logged in user of the local device.
     * On Desktop and Mobile platforms, the access token is deleted from the keychain of the local user and a backend request is made to revoke the token on the authentication server.
     * On Console platforms, even though the caller is responsible for storing and deleting the access token on the local device,
     * this function should still be called with the access token before its deletion to make the best effort in attempting to also revoke it on the authentication server.
     * If the function would fail on Console, the caller should still proceed as normal to delete the access token locally as intended.
     * 
     * - Parameter Options:  structure containing operation input parameters
     * - Parameter CompletionDelegate:  a callback that is fired when the deletion operation completes, either successfully or in error
     */
    private func ____DeletePersistentAuth(
        _ Options: SwiftEOS_Auth_DeletePersistentAuthOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Auth_DeletePersistentAuthCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Auth_DeletePersistentAuth(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Auth_DeletePersistentAuthCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Fetch an Epic Online Services Account ID that is logged in.
     * 
     * - Parameter Index:  An index into the list of logged in accounts. If the index is out of bounds, the returned Epic Online Services Account ID will be invalid.
     * 
     * - Returns:  The Epic Online Services Account ID associated with the index passed
     */
    private func ____GetLoggedInAccountByIndex(
        _ Index: Int
    ) throws -> EOS_EpicAccountId {
        try withPointerManager { pointerManager in
            try withTransformed(
                value: Index,
                transform: { Index in
                    try safeNumericCast(exactly: Index) },
                nested: { Index in
                    EOS_Auth_GetLoggedInAccountByIndex(
                        Handle,
                        Index
                    ) }
            ) }
    }

    /**
     * Fetch the number of accounts that are logged in.
     * 
     * - Returns:  the number of accounts logged in.
     */
    private func ____GetLoggedInAccountsCount() throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    EOS_Auth_GetLoggedInAccountsCount(Handle) },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Fetches the login status for an Epic Online Services Account ID.
     * 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the user being queried
     * 
     * - Returns:  The enum value of a user's login status
     */
    private func ____GetLoginStatus(
        _ LocalUserId: EOS_EpicAccountId
    ) -> EOS_ELoginStatus {
        withPointerManager { pointerManager in
            EOS_Auth_GetLoginStatus(
                Handle,
                LocalUserId
            ) }
    }

    /**
     * Link external account by continuing previous login attempt with a continuance token.
     * On Desktop and Mobile platforms, the user will be presented the Epic Account Portal to resolve their identity.
     * On Console, the user will login to their Epic Account using an external device, e.g. a mobile device or a desktop PC,
     * by browsing to the presented authentication URL and entering the device code presented by the game on the console.
     * On success, the user will be logged in at the completion of this action.
     * This will commit this external account to the Epic Account and cannot be undone in the SDK.
     * 
     * - Parameter Options:  structure containing the account credentials to use during the link account operation
     * - Parameter CompletionDelegate:  a callback that is fired when the link account operation completes, either successfully or in error
     */
    private func ____LinkAccount(
        _ Options: SwiftEOS_Auth_LinkAccountOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Auth_LinkAccountCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Auth_LinkAccount(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Auth_LinkAccountCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Login/Authenticate with user credentials.
     * 
     * - Parameter Options:  structure containing the account credentials to use during the login operation
     * - Parameter CompletionDelegate:  a callback that is fired when the login operation completes, either successfully or in error
     */
    private func ____Login(
        _ Options: SwiftEOS_Auth_LoginOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Auth_LoginCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Auth_Login(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Auth_LoginCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Signs the player out of the online service.
     * 
     * - Parameter Options:  structure containing information about which account to log out.
     * - Parameter CompletionDelegate:  a callback that is fired when the logout operation completes, either successfully or in error
     */
    private func ____Logout(
        _ Options: SwiftEOS_Auth_LogoutOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Auth_LogoutCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Auth_Logout(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Auth_LogoutCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Contact the backend service to verify validity of an existing user auth token.
     * This function is intended for server-side use only.
     * 
     * - Parameter Options:  structure containing information about the auth token being verified
     * - Parameter CompletionDelegate:  a callback that is fired when the logout operation completes, either successfully or in error
     */
    private func ____VerifyUserAuth(
        _ Options: SwiftEOS_Auth_VerifyUserAuthOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Auth_VerifyUserAuthCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Auth_VerifyUserAuth(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Auth_VerifyUserAuthCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
