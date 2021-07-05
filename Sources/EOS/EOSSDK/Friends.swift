import Foundation
import EOSSDK
public class SwiftEOS_Friends_Actor: SwiftEOSActor {
    public let Handle: EOS_HFriends

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HFriends
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Starts an asynchronous task that accepts a friend invitation from another user. The completion delegate is executed after the backend response has been received.
     * 
     * - Parameter Options:  structure containing the logged in account and the inviting account
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    public func AcceptInvite(
        Options: SwiftEOS_Friends_AcceptInviteOptions,
        CompletionDelegate: @escaping (SwiftEOS_Friends_AcceptInviteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Friends_AcceptInvite(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Friends_AcceptInviteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Listen for changes to friends for a particular account.
     * 
     * - Parameter Options:  Information about who would like notifications.
     * - Parameter ClientData:  This value is returned to the caller when FriendsUpdateHandler is invoked.
     * - Parameter FriendsUpdateHandler:  The callback to be invoked when a change to any friend status changes.
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyFriendsUpdate(
        Options: SwiftEOS_Friends_AddNotifyFriendsUpdateOptions,
        FriendsUpdateHandler: @escaping (SwiftEOS_Friends_OnFriendsUpdateInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Friends_OnFriendsUpdateInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: FriendsUpdateHandler,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Friends_AddNotifyFriendsUpdate(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Friends_OnFriendsUpdateInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyFriendsUpdate(NotificationId: notificationId) }
            ) }
    }

    /**
     * Retrieves the Epic Online Services Account ID of an entry from the friends list that has already been retrieved by the EOS_Friends_QueryFriends API.
     * The Epic Online Services Account ID returned by this function may belong to an account that has been invited to be a friend or that has invited the local user to be a friend.
     * To determine if the Epic Online Services Account ID returned by this function is a friend or a pending friend invitation, use the EOS_Friends_GetStatus function.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID of the owner of the friends list and the index into the list
     * @return the Epic Online Services Account ID of the friend. Note that if the index provided is out of bounds, the returned Epic Online Services Account ID will be a "null" account ID.
     * 
     * @see EOS_Friends_GetFriendsCount
     * @see EOS_Friends_GetStatus
     */
    public func GetFriendAtIndex(
        Options: SwiftEOS_Friends_GetFriendAtIndexOptions
    ) throws -> EOS_EpicAccountId {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                EOS_Friends_GetFriendAtIndex(
                    Handle,
                    Options
                ) } }
    }

    /**
     * Retrieves the number of friends on the friends list that has already been retrieved by the EOS_Friends_QueryFriends API.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID of user who owns the friends list
     * @return the number of friends on the list
     * 
     * @see EOS_Friends_GetFriendAtIndex
     */
    public func GetFriendsCount(
        Options: SwiftEOS_Friends_GetFriendsCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try typecastIntResult { 
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Friends_GetFriendsCount(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Retrieve the friendship status between the local user and another user.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID of the friend list to check and the account of the user to test friendship status
     * @return A value indicating whether the two accounts have a friendship, pending invites in either direction, or no relationship
     *         EOS_FS_Friends is returned for two users that have confirmed friendship
     *         EOS_FS_InviteSent is returned when the local user has sent a friend invitation but the other user has not accepted or rejected it
     *         EOS_FS_InviteReceived is returned when the other user has sent a friend invitation to the local user
     *         EOS_FS_NotFriends is returned when there is no known relationship
     * 
     * @see EOS_EFriendsStatus
     */
    public func GetStatus(
        Options: SwiftEOS_Friends_GetStatusOptions
    ) throws -> EOS_EFriendsStatus {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                EOS_Friends_GetStatus(
                    Handle,
                    Options
                ) } }
    }

    /**
     * Starts an asynchronous task that reads the user's friends list from the backend service, caching it for future use.
     * 
     * @note When the Social Overlay is enabled then this will be called automatically.  The Social Overlay is enabled by default (see EOS_PF_DISABLE_SOCIAL_OVERLAY).
     * 
     * - Parameter Options:  structure containing the account for which to retrieve the friends list
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    public func QueryFriends(
        Options: SwiftEOS_Friends_QueryFriendsOptions,
        CompletionDelegate: @escaping (SwiftEOS_Friends_QueryFriendsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Friends_QueryFriends(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Friends_QueryFriendsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Starts an asynchronous task that rejects a friend invitation from another user. The completion delegate is executed after the backend response has been received.
     * 
     * - Parameter Options:  structure containing the logged in account and the inviting account
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    public func RejectInvite(
        Options: SwiftEOS_Friends_RejectInviteOptions,
        CompletionDelegate: @escaping (SwiftEOS_Friends_RejectInviteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Friends_RejectInvite(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Friends_RejectInviteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Stop listening for friends changes on a previously bound handler.
     * 
     * - Parameter NotificationId:  The previously bound notification ID.
     */
    public func RemoveNotifyFriendsUpdate(
        NotificationId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_Friends_RemoveNotifyFriendsUpdate(
                Handle,
                NotificationId
            ) }
    }

    /**
     * Starts an asynchronous task that sends a friend invitation to another user. The completion delegate is executed after the backend response has been received.
     * It does not indicate that the target user has responded to the friend invitation.
     * 
     * - Parameter Options:  structure containing the account to send the invite from and the account to send the invite to
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    public func SendInvite(
        Options: SwiftEOS_Friends_SendInviteOptions,
        CompletionDelegate: @escaping (SwiftEOS_Friends_SendInviteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Friends_SendInvite(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Friends_SendInviteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
