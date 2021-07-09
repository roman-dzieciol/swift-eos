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
     * @note must call RemoveNotifyLoginStatusChanged to remove the notification
     * 
     * - Parameter Options:  structure containing the api version of AddNotifyLoginStatusChanged to use
     * - Parameter ClientData:  arbitrary data that is passed back to you in the callback
     * - Parameter Notification:  a callback that is fired when the login status for a user changes
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifyLoginStatusChanged(
        Options: SwiftEOS_Auth_AddNotifyLoginStatusChangedOptions,
        Notification: @escaping (SwiftEOS_Auth_LoginStatusChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Auth_LoginStatusChangedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: Notification,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Auth_AddNotifyLoginStatusChanged(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Auth_LoginStatusChangedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyLoginStatusChanged(InId: notificationId) }
            ) }
    }

    /**
     * Fetches a user auth token for an Epic Online Services Account ID.
     * 
     * - Parameter Options:  Structure containing the api version of CopyUserAuthToken to use
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the user being queried
     * - Parameter OutUserAuthToken:  The auth token for the given user, if it exists and is valid; use EOS_Auth_Token_Release when finished
     * 
     * @see EOS_Auth_Token_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutUserAuthToken
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the auth token is not found or expired.
     * 
     */
    public func CopyUserAuthToken(
        Options: SwiftEOS_Auth_CopyUserAuthTokenOptions,
        LocalUserId: EOS_EpicAccountId
    ) throws -> SwiftEOS_Auth_Token? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutUserAuthToken in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
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
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the deletion operation completes, either successfully or in error
     */
    public func DeletePersistentAuth(
        Options: SwiftEOS_Auth_DeletePersistentAuthOptions,
        CompletionDelegate: @escaping (SwiftEOS_Auth_DeletePersistentAuthCallbackInfo) -> Void
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
     * @return The Epic Online Services Account ID associated with the index passed
     */
    public func GetLoggedInAccountByIndex(
        Index: Int
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
     * @return the number of accounts logged in.
     */
    public func GetLoggedInAccountsCount() throws -> Int {
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
     * @return The enum value of a user's login status
     */
    public func GetLoginStatus(
        LocalUserId: EOS_EpicAccountId
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
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the link account operation completes, either successfully or in error
     */
    public func LinkAccount(
        Options: SwiftEOS_Auth_LinkAccountOptions,
        CompletionDelegate: @escaping (SwiftEOS_Auth_LinkAccountCallbackInfo) -> Void
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
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the login operation completes, either successfully or in error
     */
    public func Login(
        Options: SwiftEOS_Auth_LoginOptions,
        CompletionDelegate: @escaping (SwiftEOS_Auth_LoginCallbackInfo) -> Void
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
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the logout operation completes, either successfully or in error
     */
    public func Logout(
        Options: SwiftEOS_Auth_LogoutOptions,
        CompletionDelegate: @escaping (SwiftEOS_Auth_LogoutCallbackInfo) -> Void
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
     * Unregister from receiving login status updates.
     * 
     * - Parameter InId:  handle representing the registered callback
     */
    public func RemoveNotifyLoginStatusChanged(
        InId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_Auth_RemoveNotifyLoginStatusChanged(
                Handle,
                InId
            ) }
    }

    /**
     * Contact the backend service to verify validity of an existing user auth token.
     * This function is intended for server-side use only.
     * 
     * - Parameter Options:  structure containing information about the auth token being verified
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the logout operation completes, either successfully or in error
     */
    public func VerifyUserAuth(
        Options: SwiftEOS_Auth_VerifyUserAuthOptions,
        CompletionDelegate: @escaping (SwiftEOS_Auth_VerifyUserAuthCallbackInfo) -> Void
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
