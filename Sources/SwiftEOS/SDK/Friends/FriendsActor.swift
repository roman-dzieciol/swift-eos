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
    Starts an asynchronous task that accepts a friend invitation from another user. The completion delegate is executed after the backend response has been received.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local, logged-in user who is accepting the friends list invitation
    - Parameter TargetUserId: The Epic Online Services Account ID of the user who sent the friends list invitation
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    public func AcceptInvite(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        CompletionDelegate: @escaping (SwiftEOS_Friends_AcceptInviteCallbackInfo) -> Void
    ) throws {
        try ____AcceptInvite(
            .init(
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ),
            CompletionDelegate
        )
    }

    /**
    Listen for changes to friends for a particular account.

    - Parameter FriendsUpdateHandler: The callback to be invoked when a change to any friend status changes.
    - Returns: A valid notification ID if successfully bound, or `EOS_INVALID_NOTIFICATIONID` otherwise
    */
    public func AddNotifyFriendsUpdate(
        FriendsUpdateHandler: @escaping (SwiftEOS_Friends_OnFriendsUpdateInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Friends_OnFriendsUpdateInfo> {
        try ____AddNotifyFriendsUpdate(FriendsUpdateHandler)
    }

    /**
    Retrieves the Epic Online Services Account ID of an entry from the friends list that has already been retrieved by the `EOS_Friends_QueryFriends` API.
    The Epic Online Services Account ID returned by this function may belong to an account that has been invited to be a friend or that has invited the local user to be a friend.
    To determine if the Epic Online Services Account ID returned by this function is a friend or a pending friend invitation, use the `EOS_Friends_GetStatus` function.

    - Parameter LocalUserId: The Epic Online Services Account ID of the user whose friend list is being queried
    - Parameter Index: Index into the friend list. This value must be between 0 and `EOS_Friends_GetFriendsCount`-1 inclusively.
    - Returns: the Epic Online Services Account ID of the friend. Note that if the index provided is out of bounds, the returned Epic Online Services Account ID will be a "null" account ID.
    - SeeAlso: `EOS_Friends_GetFriendsCount`
    - SeeAlso: `EOS_Friends_GetStatus`
    */
    public func GetFriendAtIndex(
        LocalUserId: EOS_EpicAccountId?,
        Index: Int
    ) throws -> EOS_EpicAccountId {
        try ____GetFriendAtIndex(.init(
                LocalUserId: LocalUserId,
                Index: Index
            ))
    }

    /**
    Retrieves the number of friends on the friends list that has already been retrieved by the `EOS_Friends_QueryFriends` API.

    - Parameter LocalUserId: The Epic Online Services Account ID of the user whose friends should be counted
    - Returns: the number of friends on the list
    - SeeAlso: `EOS_Friends_GetFriendAtIndex`
    */
    public func GetFriendsCount(
        LocalUserId: EOS_EpicAccountId?
    ) throws -> Int {
        try ____GetFriendsCount(.init(LocalUserId: LocalUserId))
    }

    /**
    Retrieve the friendship status between the local user and another user.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local, logged in user
    - Parameter TargetUserId: The Epic Online Services Account ID of the user whose friendship status with the local user is being queried
    - Returns: A value indicating whether the two accounts have a friendship, pending invites in either direction, or no relationship
               `EOS_FS_Friends` is returned for two users that have confirmed friendship
               `EOS_FS_InviteSent` is returned when the local user has sent a friend invitation but the other user has not accepted or rejected it
               `EOS_FS_InviteReceived` is returned when the other user has sent a friend invitation to the local user
               `EOS_FS_NotFriends` is returned when there is no known relationship
    - SeeAlso: `EOS_EFriendsStatus`
    */
    public func GetStatus(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) throws -> EOS_EFriendsStatus {
        try ____GetStatus(.init(
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ))
    }

    /**
    Starts an asynchronous task that reads the user's friends list from the backend service, caching it for future use.

    - Note: When the Social Overlay is enabled then this will be called automatically.  The Social Overlay is enabled by default (see `EOS_PF_DISABLE_SOCIAL_OVERLAY`).
    - Parameter LocalUserId: The Epic Online Services Account ID of the local, logged-in user whose friends list you want to retrieve
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    public func QueryFriends(
        LocalUserId: EOS_EpicAccountId?,
        CompletionDelegate: @escaping (SwiftEOS_Friends_QueryFriendsCallbackInfo) -> Void
    ) throws {
        try ____QueryFriends(
            .init(LocalUserId: LocalUserId),
            CompletionDelegate
        )
    }

    /**
    Starts an asynchronous task that rejects a friend invitation from another user. The completion delegate is executed after the backend response has been received.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local, logged-in user who is rejecting a friends list invitation
    - Parameter TargetUserId: The Epic Online Services Account ID of the user who sent the friends list invitation
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    public func RejectInvite(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        CompletionDelegate: @escaping (SwiftEOS_Friends_RejectInviteCallbackInfo) -> Void
    ) throws {
        try ____RejectInvite(
            .init(
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ),
            CompletionDelegate
        )
    }

    /**
    Starts an asynchronous task that sends a friend invitation to another user. The completion delegate is executed after the backend response has been received.
    It does not indicate that the target user has responded to the friend invitation.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local, logged-in user who is sending the friends list invitation
    - Parameter TargetUserId: The Epic Online Services Account ID of the user who is receiving the friends list invitation
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    public func SendInvite(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        CompletionDelegate: @escaping (SwiftEOS_Friends_SendInviteCallbackInfo) -> Void
    ) throws {
        try ____SendInvite(
            .init(
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_Friends_Actor {

    /**
    Starts an asynchronous task that accepts a friend invitation from another user. The completion delegate is executed after the backend response has been received.

    - Parameter Options: structure containing the logged in account and the inviting account
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    private func ____AcceptInvite(
        _ Options: SwiftEOS_Friends_AcceptInviteOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Friends_AcceptInviteCallbackInfo) -> Void
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
    Listen for changes to friends for a particular account.

    - Parameter FriendsUpdateHandler: The callback to be invoked when a change to any friend status changes.
    - Returns: A valid notification ID if successfully bound, or `EOS_INVALID_NOTIFICATIONID` otherwise
    */
    private func ____AddNotifyFriendsUpdate(
        _ FriendsUpdateHandler: @escaping (SwiftEOS_Friends_OnFriendsUpdateInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Friends_OnFriendsUpdateInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: FriendsUpdateHandler,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Friends_AddNotifyFriendsUpdateOptions(), managedBy: pointerManager) { Options in
                        EOS_Friends_AddNotifyFriendsUpdate(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Friends_OnFriendsUpdateInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Friends_RemoveNotifyFriendsUpdate(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
    Retrieves the Epic Online Services Account ID of an entry from the friends list that has already been retrieved by the `EOS_Friends_QueryFriends` API.
    The Epic Online Services Account ID returned by this function may belong to an account that has been invited to be a friend or that has invited the local user to be a friend.
    To determine if the Epic Online Services Account ID returned by this function is a friend or a pending friend invitation, use the `EOS_Friends_GetStatus` function.

    - Parameter Options: structure containing the Epic Online Services Account ID of the owner of the friends list and the index into the list
    - Returns: the Epic Online Services Account ID of the friend. Note that if the index provided is out of bounds, the returned Epic Online Services Account ID will be a "null" account ID.
    - SeeAlso: `EOS_Friends_GetFriendsCount`
    - SeeAlso: `EOS_Friends_GetStatus`
    */
    private func ____GetFriendAtIndex(
        _ Options: SwiftEOS_Friends_GetFriendAtIndexOptions
    ) throws -> EOS_EpicAccountId {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                EOS_Friends_GetFriendAtIndex(
                    Handle,
                    Options
                ) } }
    }

    /**
    Retrieves the number of friends on the friends list that has already been retrieved by the `EOS_Friends_QueryFriends` API.

    - Parameter Options: structure containing the Epic Online Services Account ID of user who owns the friends list
    - Returns: the number of friends on the list
    - SeeAlso: `EOS_Friends_GetFriendAtIndex`
    */
    private func ____GetFriendsCount(
        _ Options: SwiftEOS_Friends_GetFriendsCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Friends_GetFriendsCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Retrieve the friendship status between the local user and another user.

    - Parameter Options: structure containing the Epic Online Services Account ID of the friend list to check and the account of the user to test friendship status
    - Returns: A value indicating whether the two accounts have a friendship, pending invites in either direction, or no relationship
               `EOS_FS_Friends` is returned for two users that have confirmed friendship
               `EOS_FS_InviteSent` is returned when the local user has sent a friend invitation but the other user has not accepted or rejected it
               `EOS_FS_InviteReceived` is returned when the other user has sent a friend invitation to the local user
               `EOS_FS_NotFriends` is returned when there is no known relationship
    - SeeAlso: `EOS_EFriendsStatus`
    */
    private func ____GetStatus(
        _ Options: SwiftEOS_Friends_GetStatusOptions
    ) throws -> EOS_EFriendsStatus {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                EOS_Friends_GetStatus(
                    Handle,
                    Options
                ) } }
    }

    /**
    Starts an asynchronous task that reads the user's friends list from the backend service, caching it for future use.

    - Note: When the Social Overlay is enabled then this will be called automatically.  The Social Overlay is enabled by default (see `EOS_PF_DISABLE_SOCIAL_OVERLAY`).
    - Parameter Options: structure containing the account for which to retrieve the friends list
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    private func ____QueryFriends(
        _ Options: SwiftEOS_Friends_QueryFriendsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Friends_QueryFriendsCallbackInfo) -> Void
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
    Starts an asynchronous task that rejects a friend invitation from another user. The completion delegate is executed after the backend response has been received.

    - Parameter Options: structure containing the logged in account and the inviting account
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    private func ____RejectInvite(
        _ Options: SwiftEOS_Friends_RejectInviteOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Friends_RejectInviteCallbackInfo) -> Void
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
    Starts an asynchronous task that sends a friend invitation to another user. The completion delegate is executed after the backend response has been received.
    It does not indicate that the target user has responded to the friend invitation.

    - Parameter Options: structure containing the account to send the invite from and the account to send the invite to
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    private func ____SendInvite(
        _ Options: SwiftEOS_Friends_SendInviteOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Friends_SendInviteCallbackInfo) -> Void
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
