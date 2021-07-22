import Foundation
import EOSSDK

public final class SwiftEOS_Sessions_Actor: SwiftEOSActor {
    public let Handle: EOS_HSessions?

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HSessions?
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
    Register to receive notifications when a user accepts a session join game via the social overlay.

    - Note: must call RemoveNotifyJoinSessionAccepted to remove the notification
    - Parameter NotificationFn: A callback that is fired when a a notification is received.
    - Returns: handle representing the registered callback
    */
    public func AddNotifyJoinSessionAccepted(
        NotificationFn: @escaping (SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo> {
        try ____AddNotifyJoinSessionAccepted(NotificationFn)
    }

    /**
    Register to receive notifications when a user accepts a session invite via the social overlay.

    - Note: must call RemoveNotifySessionInviteAccepted to remove the notification
    - Parameter NotificationFn: A callback that is fired when a a notification is received.
    - Returns: handle representing the registered callback
    */
    public func AddNotifySessionInviteAccepted(
        NotificationFn: @escaping (SwiftEOS_Sessions_SessionInviteAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Sessions_SessionInviteAcceptedCallbackInfo> {
        try ____AddNotifySessionInviteAccepted(NotificationFn)
    }

    /**
    Register to receive session invites.

    - Note: must call RemoveNotifySessionInviteReceived to remove the notification
    - Parameter NotificationFn: A callback that is fired when a session invite for a user has been received
    - Returns: handle representing the registered callback
    */
    public func AddNotifySessionInviteReceived(
        NotificationFn: @escaping (SwiftEOS_Sessions_SessionInviteReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Sessions_SessionInviteReceivedCallbackInfo> {
        try ____AddNotifySessionInviteReceived(NotificationFn)
    }

    /**
    `EOS_Sessions_CopySessionHandleByInviteId` is used to immediately retrieve a handle to the session information from after notification of an invite
    If the call returns an `EOS_Success` result, the out parameter, OutSessionHandle, must be passed to `EOS_SessionDetails_Release` to release the memory associated with it.

    - Parameter InviteId: Invite ID for which to retrieve a session handle
    - Throws: `EOS_InvalidParameters` if you pass an invalid invite ID or a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
              `EOS_NotFound` if the invite ID cannot be found
    - SeeAlso: `EOS_Sessions_CopySessionHandleByInviteIdOptions`
    - SeeAlso: `EOS_SessionDetails_Release`
    - Returns: out parameter used to receive the session handle
    */
    public func CopySessionHandleByInviteId(
        InviteId: String?
    ) throws -> EOS_HSessionDetails {
        try ____CopySessionHandleByInviteId(.init(InviteId: InviteId))
    }

    /**
    `EOS_Sessions_CopySessionHandleByUiEventId` is used to immediately retrieve a handle to the session information from after notification of a join game event.
    If the call returns an `EOS_Success` result, the out parameter, OutSessionHandle, must be passed to `EOS_SessionDetails_Release` to release the memory associated with it.

    - Parameter UiEventId: UI Event associated with the session
    - Throws: `EOS_InvalidParameters` if you pass an invalid invite ID or a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
              `EOS_NotFound` if the invite ID cannot be found
    - SeeAlso: `EOS_Sessions_CopySessionHandleByUiEventIdOptions`
    - SeeAlso: `EOS_SessionDetails_Release`
    - Returns: out parameter used to receive the session handle
    */
    public func CopySessionHandleByUiEventId(
        UiEventId: EOS_UI_EventId
    ) throws -> EOS_HSessionDetails {
        try ____CopySessionHandleByUiEventId(.init(UiEventId: UiEventId))
    }

    /**
    `EOS_Sessions_CopySessionHandleForPresence` is used to immediately retrieve a handle to the session information which was marked with bPresenceEnabled on create or join.
    If the call returns an `EOS_Success` result, the out parameter, OutSessionHandle, must be passed to `EOS_SessionDetails_Release` to release the memory associated with it.

    - Parameter LocalUserId: The Product User ID of the local user associated with the session
    - Throws: `EOS_InvalidParameters` if you pass an invalid invite ID or a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
              `EOS_NotFound` if there is no session with bPresenceEnabled
    - SeeAlso: `EOS_Sessions_CopySessionHandleForPresenceOptions`
    - SeeAlso: `EOS_SessionDetails_Release`
    - Returns: out parameter used to receive the session handle
    */
    public func CopySessionHandleForPresence(
        LocalUserId: EOS_ProductUserId?
    ) throws -> EOS_HSessionDetails {
        try ____CopySessionHandleForPresence(.init(LocalUserId: LocalUserId))
    }

    /**
    Creates a session modification handle (`EOS_HSessionModification`).  The session modification handle is used to build a new session and can be applied with `EOS_Sessions_UpdateSession`
    The `EOS_HSessionModification` must be released by calling `EOS_SessionModification_Release` once it no longer needed.

    - Parameter SessionName: Name of the session to create
    - Parameter BucketId: Bucket ID associated with the session
    - Parameter MaxPlayers: Maximum number of players allowed in the session
    - Parameter LocalUserId: The Product User ID of the local user associated with the session
    - Parameter bPresenceEnabled: If true, this session will be associated with presence. Only one session at a time can have this flag true.
    This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.
    - Note: The Social Overlay can handle only one of the following three options at a time:
            * using the bPresenceEnabled flags within the Sessions interface
            * using the bPresenceEnabled flags within the Lobby interface
            * using `EOS_PresenceModification_SetJoinInfo`
    - SeeAlso: `EOS_PresenceModification_SetJoinInfoOptions`
    - SeeAlso: `EOS_Lobby_CreateLobbyOptions`
    - SeeAlso: `EOS_Lobby_JoinLobbyOptions`
    - SeeAlso: `EOS_Sessions_JoinSessionOptions`
    - Parameter SessionId: Optional session id - set to a globally unique value to override the backend assignment
    If not specified the backend service will assign one to the session.  Do not mix and match.
    This value can be of size [`EOS_SESSIONMODIFICATION_MIN_SESSIONIDOVERRIDE_LENGTH`, `EOS_SESSIONMODIFICATION_MAX_SESSIONIDOVERRIDE_LENGTH`]
    - Throws: - SeeAlso: `EOS_SessionModification_Release`
    - SeeAlso: `EOS_Sessions_UpdateSession`
    - SeeAlso: `EOS_HSessionModification`
    - Returns: Pointer to a Session Modification Handle only set if successful
    */
    public func CreateSessionModification(
        SessionName: String?,
        BucketId: String?,
        MaxPlayers: Int,
        LocalUserId: EOS_ProductUserId?,
        bPresenceEnabled: Bool,
        SessionId: String?
    ) throws -> EOS_HSessionModification {
        try ____CreateSessionModification(.init(
                SessionName: SessionName,
                BucketId: BucketId,
                MaxPlayers: MaxPlayers,
                LocalUserId: LocalUserId,
                bPresenceEnabled: bPresenceEnabled,
                SessionId: SessionId
            ))
    }

    /**
    Create a session search handle.  This handle may be modified to include various search parameters.
    Searching is possible in three methods, all mutually exclusive
    - set the session ID to find a specific session
    - set the target user ID to find a specific user
    - set session parameters to find an array of sessions that match the search criteria

    - Parameter MaxSearchResults: Max number of results to return
    - Throws: `EOS_InvalidParameters` if any of the options are incorrect
    - Returns: The new search handle or null if there was an error creating the search handle
    */
    public func CreateSessionSearch(
        MaxSearchResults: Int
    ) throws -> EOS_HSessionSearch {
        try ____CreateSessionSearch(.init(MaxSearchResults: MaxSearchResults))
    }

    /**
    Destroy a session given a session name

    - Parameter SessionName: Name of the session to destroy
    - Parameter CompletionDelegate: A callback that is fired when the destroy operation completes, either successfully or in error
    - Returns: `EOS_Success` if the destroy completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_AlreadyPending` if the session is already marked for destroy
               `EOS_NotFound` if a session to be destroyed does not exist
    */
    public func DestroySession(
        SessionName: String?,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_DestroySessionCallbackInfo) -> Void
    ) throws {
        try ____DestroySession(
            .init(SessionName: SessionName),
            CompletionDelegate
        )
    }

    /**
    Dump the contents of active sessions that exist locally to the log output, purely for debug purposes

    - Parameter SessionName: Name of the session
    - Throws: `EOS_NotFound` if the session specified does not exist
              `EOS_InvalidParameters` if any of the options are incorrect
    */
    public func DumpSessionState(
        SessionName: String?
    ) throws {
        try ____DumpSessionState(.init(SessionName: SessionName))
    }

    /**
    Mark a session as ended, making it available to find if "join in progress" was disabled.  The session may be started again if desired

    - Parameter SessionName: Name of the session to set as no long in progress
    - Parameter CompletionDelegate: A callback that is fired when the end operation completes, either successfully or in error
    - Returns: `EOS_Success` if the end completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_Sessions_OutOfSync` if the session is out of sync and will be updated on the next connection with the backend
               `EOS_NotFound` if a session to be ended does not exist
    */
    public func EndSession(
        SessionName: String?,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_EndSessionCallbackInfo) -> Void
    ) throws {
        try ____EndSession(
            .init(SessionName: SessionName),
            CompletionDelegate
        )
    }

    /**
    Get the number of known invites for a given user

    - Parameter LocalUserId: The Product User ID of the local user who has one or more invitations in the cache
    - Returns: number of known invites for a given user or 0 if there is an error
    */
    public func GetInviteCount(
        LocalUserId: EOS_ProductUserId?
    ) throws -> Int {
        try ____GetInviteCount(.init(LocalUserId: LocalUserId))
    }

    /**
    Retrieve an invite ID from a list of active invites for a given user

    - Parameter LocalUserId: The Product User ID of the local user who has an invitation in the cache
    - Parameter Index: Index of the invite ID to retrieve
    - Throws: `EOS_InvalidParameters` if any of the options are incorrect
              `EOS_NotFound` if the invite doesn't exist
    - SeeAlso: `EOS_Sessions_GetInviteCount`
    - SeeAlso: `EOS_Sessions_CopySessionHandleByInviteId`
    - Returns:  
    */
    public func GetInviteIdByIndex(
        LocalUserId: EOS_ProductUserId?,
        Index: Int
    ) throws -> String {
        try ____GetInviteIdByIndex(.init(
                LocalUserId: LocalUserId,
                Index: Index
            ))
    }

    /**
    `EOS_Sessions_IsUserInSession` returns whether or not a given user can be found in a specified session

    - Parameter SessionName: Active session name to search within
    - Parameter TargetUserId: Product User ID to search for in the session
    - Throws: `EOS_NotFound` if the user is not found in the specified session
              `EOS_InvalidParameters` if you pass an invalid invite ID or a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
              `EOS_Invalid_ProductUserID` if an invalid target user is specified
              `EOS_Sessions_InvalidSession` if the session specified is invalid
    */
    public func IsUserInSession(
        SessionName: String?,
        TargetUserId: EOS_ProductUserId?
    ) throws {
        try ____IsUserInSession(.init(
                SessionName: SessionName,
                TargetUserId: TargetUserId
            ))
    }

    /**
    Join a session, creating a local session under a given session name.  Backend will validate various conditions to make sure it is possible to join the session.

    - Parameter SessionName: Name of the session to create after joining session
    - Parameter SessionHandle: Session handle to join
    - Parameter LocalUserId: The Product User ID of the local user who is joining the session
    - Parameter bPresenceEnabled: If true, this session will be associated with presence. Only one session at a time can have this flag true.
    This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.
    - Note: The Social Overlay can handle only one of the following three options at a time:
            * using the bPresenceEnabled flags within the Sessions interface
            * using the bPresenceEnabled flags within the Lobby interface
            * using `EOS_PresenceModification_SetJoinInfo`
    - SeeAlso: `EOS_PresenceModification_SetJoinInfoOptions`
    - SeeAlso: `EOS_Lobby_CreateLobbyOptions`
    - SeeAlso: `EOS_Lobby_JoinLobbyOptions`
    - SeeAlso: `EOS_Sessions_CreateSessionModificationOptions`
    - Parameter CompletionDelegate: A callback that is fired when the join operation completes, either successfully or in error
    - Returns: `EOS_Success` if the join completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_Sessions_SessionAlreadyExists` if the session is already exists or is in the process of being joined
    */
    public func JoinSession(
        SessionName: String?,
        SessionHandle: EOS_HSessionDetails?,
        LocalUserId: EOS_ProductUserId?,
        bPresenceEnabled: Bool,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_JoinSessionCallbackInfo) -> Void
    ) throws {
        try ____JoinSession(
            .init(
                SessionName: SessionName,
                SessionHandle: SessionHandle,
                LocalUserId: LocalUserId,
                bPresenceEnabled: bPresenceEnabled
            ),
            CompletionDelegate
        )
    }

    /**
    Retrieve all existing invites for a single user

    - Parameter LocalUserId: The Product User ID to query for invitations
    - Parameter CompletionDelegate: A callback that is fired when the query invites operation completes, either successfully or in error
    */
    public func QueryInvites(
        LocalUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_QueryInvitesCallbackInfo) -> Void
    ) throws {
        try ____QueryInvites(
            .init(LocalUserId: LocalUserId),
            CompletionDelegate
        )
    }

    /**
    Register a group of players with the session, allowing them to invite others or otherwise indicate they are part of the session for determining a full session

    - Parameter SessionName: Name of the session for which to register players
    - Parameter PlayersToRegister: Array of players to register with the session
    - Note: ``EOS/_tagEOS_Sessions_RegisterPlayersOptions/PlayersToRegisterCount``:
    Number of players in the array
    - Parameter CompletionDelegate: A callback that is fired when the registration operation completes, either successfully or in error
    - Returns: `EOS_Success` if the register completes successfully
               `EOS_NoChange` if the players to register registered previously
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_Sessions_OutOfSync` if the session is out of sync and will be updated on the next connection with the backend
               `EOS_NotFound` if a session to register players does not exist
    */
    public func RegisterPlayers(
        SessionName: String?,
        PlayersToRegister: [EOS_ProductUserId]?,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_RegisterPlayersCallbackInfo) -> Void
    ) throws {
        try ____RegisterPlayers(
            .init(
                SessionName: SessionName,
                PlayersToRegister: PlayersToRegister
            ),
            CompletionDelegate
        )
    }

    /**
    Reject an invite from another player.

    - Parameter LocalUserId: The Product User ID of the local user rejecting the invitation
    - Parameter InviteId: The invite ID to reject
    - Parameter CompletionDelegate: A callback that is fired when the reject invite operation completes, either successfully or in error
    - Returns: `EOS_Success` if the invite rejection completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_NotFound` if the invite does not exist
    */
    public func RejectInvite(
        LocalUserId: EOS_ProductUserId?,
        InviteId: String?,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_RejectInviteCallbackInfo) -> Void
    ) throws {
        try ____RejectInvite(
            .init(
                LocalUserId: LocalUserId,
                InviteId: InviteId
            ),
            CompletionDelegate
        )
    }

    /**
    Send an invite to another player.  User must have created the session or be registered in the session or else the call will fail

    - Parameter SessionName: Name of the session associated with the invite
    - Parameter LocalUserId: The Product User ID of the local user sending the invitation
    - Parameter TargetUserId: The Product User of the remote user receiving the invitation
    - Parameter CompletionDelegate: A callback that is fired when the send invite operation completes, either successfully or in error
    - Returns: `EOS_Success` if the send invite completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_NotFound` if the session to send the invite from does not exist
    */
    public func SendInvite(
        SessionName: String?,
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_SendInviteCallbackInfo) -> Void
    ) throws {
        try ____SendInvite(
            .init(
                SessionName: SessionName,
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ),
            CompletionDelegate
        )
    }

    /**
    Mark a session as started, making it unable to find if session properties indicate "join in progress" is not available

    - Parameter SessionName: Name of the session to set in progress
    - Parameter CompletionDelegate: A callback that is fired when the start operation completes, either successfully or in error
    - Returns: `EOS_Success` if the start completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_Sessions_OutOfSync` if the session is out of sync and will be updated on the next connection with the backend
               `EOS_NotFound` if a session to be started does not exist
    */
    public func StartSession(
        SessionName: String?,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_StartSessionCallbackInfo) -> Void
    ) throws {
        try ____StartSession(
            .init(SessionName: SessionName),
            CompletionDelegate
        )
    }

    /**
    Unregister a group of players with the session, freeing up space for others to join

    - Parameter SessionName: Name of the session for which to unregister players
    - Parameter PlayersToUnregister: Array of players to unregister from the session
    - Note: ``EOS/_tagEOS_Sessions_UnregisterPlayersOptions/PlayersToUnregisterCount``:
    Number of players in the array
    - Parameter CompletionDelegate: A callback that is fired when the unregistration operation completes, either successfully or in error
    - Returns: `EOS_Success` if the unregister completes successfully
               `EOS_NoChange` if the players to unregister were not found
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_Sessions_OutOfSync` if the session is out of sync and will be updated on the next connection with the backend
               `EOS_NotFound` if a session to be unregister players does not exist
    */
    public func UnregisterPlayers(
        SessionName: String?,
        PlayersToUnregister: [EOS_ProductUserId]?,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_UnregisterPlayersCallbackInfo) -> Void
    ) throws {
        try ____UnregisterPlayers(
            .init(
                SessionName: SessionName,
                PlayersToUnregister: PlayersToUnregister
            ),
            CompletionDelegate
        )
    }

    /**
    Update a session given a session modification handle created by `EOS_Sessions_CreateSessionModification` or `EOS_Sessions_UpdateSessionModification`

    - Parameter SessionModificationHandle: Builder handle
    - Parameter CompletionDelegate: A callback that is fired when the update operation completes, either successfully or in error
    - Returns: `EOS_Success` if the update completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_Sessions_OutOfSync` if the session is out of sync and will be updated on the next connection with the backend
               `EOS_NotFound` if a session to be updated does not exist
    */
    public func UpdateSession(
        SessionModificationHandle: EOS_HSessionModification?,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_UpdateSessionCallbackInfo) -> Void
    ) throws {
        try ____UpdateSession(
            .init(SessionModificationHandle: SessionModificationHandle),
            CompletionDelegate
        )
    }

    /**
    Creates a session modification handle (`EOS_HSessionModification`). The session modification handle is used to modify an existing session and can be applied with `EOS_Sessions_UpdateSession`.
    The `EOS_HSessionModification` must be released by calling `EOS_SessionModification_Release` once it is no longer needed.

    - Parameter SessionName: Name of the session to update
    - Throws: - SeeAlso: `EOS_SessionModification_Release`
    - SeeAlso: `EOS_Sessions_UpdateSession`
    - SeeAlso: `EOS_HSessionModification`
    - Returns: Pointer to a Session Modification Handle only set if successful
    */
    public func UpdateSessionModification(
        SessionName: String?
    ) throws -> EOS_HSessionModification {
        try ____UpdateSessionModification(.init(SessionName: SessionName))
    }
}

extension SwiftEOS_Sessions_Actor {

    /**
    Register to receive notifications when a user accepts a session join game via the social overlay.

    - Note: must call RemoveNotifyJoinSessionAccepted to remove the notification
    - Parameter NotificationFn: A callback that is fired when a a notification is received.
    - Returns: handle representing the registered callback
    */
    private func ____AddNotifyJoinSessionAccepted(
        _ NotificationFn: @escaping (SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectOptionalMutablePointerFromSwiftObject(SwiftEOS_Sessions_AddNotifyJoinSessionAcceptedOptions(), managedBy: pointerManager) { Options in
                        EOS_Sessions_AddNotifyJoinSessionAccepted(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Sessions_RemoveNotifyJoinSessionAccepted(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
    Register to receive notifications when a user accepts a session invite via the social overlay.

    - Note: must call RemoveNotifySessionInviteAccepted to remove the notification
    - Parameter NotificationFn: A callback that is fired when a a notification is received.
    - Returns: handle representing the registered callback
    */
    private func ____AddNotifySessionInviteAccepted(
        _ NotificationFn: @escaping (SwiftEOS_Sessions_SessionInviteAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Sessions_SessionInviteAcceptedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectOptionalMutablePointerFromSwiftObject(SwiftEOS_Sessions_AddNotifySessionInviteAcceptedOptions(), managedBy: pointerManager) { Options in
                        EOS_Sessions_AddNotifySessionInviteAccepted(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Sessions_SessionInviteAcceptedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Sessions_RemoveNotifySessionInviteAccepted(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
    Register to receive session invites.

    - Note: must call RemoveNotifySessionInviteReceived to remove the notification
    - Parameter NotificationFn: A callback that is fired when a session invite for a user has been received
    - Returns: handle representing the registered callback
    */
    private func ____AddNotifySessionInviteReceived(
        _ NotificationFn: @escaping (SwiftEOS_Sessions_SessionInviteReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Sessions_SessionInviteReceivedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectOptionalMutablePointerFromSwiftObject(SwiftEOS_Sessions_AddNotifySessionInviteReceivedOptions(), managedBy: pointerManager) { Options in
                        EOS_Sessions_AddNotifySessionInviteReceived(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Sessions_SessionInviteReceivedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Sessions_RemoveNotifySessionInviteReceived(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
    `EOS_Sessions_CopySessionHandleByInviteId` is used to immediately retrieve a handle to the session information from after notification of an invite
    If the call returns an `EOS_Success` result, the out parameter, OutSessionHandle, must be passed to `EOS_SessionDetails_Release` to release the memory associated with it.

    - Parameter Options: Structure containing the input parameters
    - Throws: `EOS_InvalidParameters` if you pass an invalid invite ID or a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
              `EOS_NotFound` if the invite ID cannot be found
    - SeeAlso: `EOS_Sessions_CopySessionHandleByInviteIdOptions`
    - SeeAlso: `EOS_SessionDetails_Release`
    - Returns: out parameter used to receive the session handle
    */
    private func ____CopySessionHandleByInviteId(
        _ Options: SwiftEOS_Sessions_CopySessionHandleByInviteIdOptions
    ) throws -> EOS_HSessionDetails {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withHandleReturned(managedBy: pointerManager) { OutSessionHandle in
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Sessions_CopySessionHandleByInviteId(
                                Handle,
                                Options,
                                OutSessionHandle
                            ) } } } } }
    }

    /**
    `EOS_Sessions_CopySessionHandleByUiEventId` is used to immediately retrieve a handle to the session information from after notification of a join game event.
    If the call returns an `EOS_Success` result, the out parameter, OutSessionHandle, must be passed to `EOS_SessionDetails_Release` to release the memory associated with it.

    - Parameter Options: Structure containing the input parameters
    - Throws: `EOS_InvalidParameters` if you pass an invalid invite ID or a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
              `EOS_NotFound` if the invite ID cannot be found
    - SeeAlso: `EOS_Sessions_CopySessionHandleByUiEventIdOptions`
    - SeeAlso: `EOS_SessionDetails_Release`
    - Returns: out parameter used to receive the session handle
    */
    private func ____CopySessionHandleByUiEventId(
        _ Options: SwiftEOS_Sessions_CopySessionHandleByUiEventIdOptions
    ) throws -> EOS_HSessionDetails {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withHandleReturned(managedBy: pointerManager) { OutSessionHandle in
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Sessions_CopySessionHandleByUiEventId(
                                Handle,
                                Options,
                                OutSessionHandle
                            ) } } } } }
    }

    /**
    `EOS_Sessions_CopySessionHandleForPresence` is used to immediately retrieve a handle to the session information which was marked with bPresenceEnabled on create or join.
    If the call returns an `EOS_Success` result, the out parameter, OutSessionHandle, must be passed to `EOS_SessionDetails_Release` to release the memory associated with it.

    - Parameter Options: Structure containing the input parameters
    - Throws: `EOS_InvalidParameters` if you pass an invalid invite ID or a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
              `EOS_NotFound` if there is no session with bPresenceEnabled
    - SeeAlso: `EOS_Sessions_CopySessionHandleForPresenceOptions`
    - SeeAlso: `EOS_SessionDetails_Release`
    - Returns: out parameter used to receive the session handle
    */
    private func ____CopySessionHandleForPresence(
        _ Options: SwiftEOS_Sessions_CopySessionHandleForPresenceOptions
    ) throws -> EOS_HSessionDetails {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withHandleReturned(managedBy: pointerManager) { OutSessionHandle in
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Sessions_CopySessionHandleForPresence(
                                Handle,
                                Options,
                                OutSessionHandle
                            ) } } } } }
    }

    /**
    Creates a session modification handle (`EOS_HSessionModification`).  The session modification handle is used to build a new session and can be applied with `EOS_Sessions_UpdateSession`
    The `EOS_HSessionModification` must be released by calling `EOS_SessionModification_Release` once it no longer needed.

    - Parameter Options: Required fields for the creation of a session such as a name, bucketid, and max players
    - Throws: - SeeAlso: `EOS_SessionModification_Release`
    - SeeAlso: `EOS_Sessions_UpdateSession`
    - SeeAlso: `EOS_HSessionModification`
    - Returns: Pointer to a Session Modification Handle only set if successful
    */
    private func ____CreateSessionModification(
        _ Options: SwiftEOS_Sessions_CreateSessionModificationOptions
    ) throws -> EOS_HSessionModification {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withHandleReturned(managedBy: pointerManager) { OutSessionModificationHandle in
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Sessions_CreateSessionModification(
                                Handle,
                                Options,
                                OutSessionModificationHandle
                            ) } } } } }
    }

    /**
    Create a session search handle.  This handle may be modified to include various search parameters.
    Searching is possible in three methods, all mutually exclusive
    - set the session ID to find a specific session
    - set the target user ID to find a specific user
    - set session parameters to find an array of sessions that match the search criteria

    - Parameter Options: Structure containing required parameters such as the maximum number of search results
    - Throws: `EOS_InvalidParameters` if any of the options are incorrect
    - Returns: The new search handle or null if there was an error creating the search handle
    */
    private func ____CreateSessionSearch(
        _ Options: SwiftEOS_Sessions_CreateSessionSearchOptions
    ) throws -> EOS_HSessionSearch {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withHandleReturned(managedBy: pointerManager) { OutSessionSearchHandle in
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Sessions_CreateSessionSearch(
                                Handle,
                                Options,
                                OutSessionSearchHandle
                            ) } } } } }
    }

    /**
    Destroy a session given a session name

    - Parameter Options: Structure containing information about the session to be destroyed
    - Parameter CompletionDelegate: A callback that is fired when the destroy operation completes, either successfully or in error
    - Returns: `EOS_Success` if the destroy completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_AlreadyPending` if the session is already marked for destroy
               `EOS_NotFound` if a session to be destroyed does not exist
    */
    private func ____DestroySession(
        _ Options: SwiftEOS_Sessions_DestroySessionOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Sessions_DestroySessionCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_DestroySession(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_DestroySessionCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Dump the contents of active sessions that exist locally to the log output, purely for debug purposes

    - Parameter Options: Options related to dumping session state such as the session name
    - Throws: `EOS_NotFound` if the session specified does not exist
              `EOS_InvalidParameters` if any of the options are incorrect
    */
    private func ____DumpSessionState(
        _ Options: SwiftEOS_Sessions_DumpSessionStateOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_Sessions_DumpSessionState(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Mark a session as ended, making it available to find if "join in progress" was disabled.  The session may be started again if desired

    - Parameter Options: Structure containing information about the session to be ended
    - Parameter CompletionDelegate: A callback that is fired when the end operation completes, either successfully or in error
    - Returns: `EOS_Success` if the end completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_Sessions_OutOfSync` if the session is out of sync and will be updated on the next connection with the backend
               `EOS_NotFound` if a session to be ended does not exist
    */
    private func ____EndSession(
        _ Options: SwiftEOS_Sessions_EndSessionOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Sessions_EndSessionCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_EndSession(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_EndSessionCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Get the number of known invites for a given user

    - Parameter Options: the Options associated with retrieving the current invite count
    - Returns: number of known invites for a given user or 0 if there is an error
    */
    private func ____GetInviteCount(
        _ Options: SwiftEOS_Sessions_GetInviteCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Sessions_GetInviteCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Retrieve an invite ID from a list of active invites for a given user

    - Parameter Options: Structure containing the input parameters
    - Throws: `EOS_InvalidParameters` if any of the options are incorrect
              `EOS_NotFound` if the invite doesn't exist
    - SeeAlso: `EOS_Sessions_GetInviteCount`
    - SeeAlso: `EOS_Sessions_CopySessionHandleByInviteId`
    - Returns:  
    */
    private func ____GetInviteIdByIndex(
        _ Options: SwiftEOS_Sessions_GetInviteIdByIndexOptions
    ) throws -> String {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersReturnedAsString { OutBuffer, InOutBufferLength in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Sessions_GetInviteIdByIndex(
                            Handle,
                            Options,
                            OutBuffer,
                            InOutBufferLength
                        ) } } } }
    }

    /**
    `EOS_Sessions_IsUserInSession` returns whether or not a given user can be found in a specified session

    - Parameter Options: Structure containing the input parameters
    - Throws: `EOS_NotFound` if the user is not found in the specified session
              `EOS_InvalidParameters` if you pass an invalid invite ID or a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
              `EOS_Invalid_ProductUserID` if an invalid target user is specified
              `EOS_Sessions_InvalidSession` if the session specified is invalid
    */
    private func ____IsUserInSession(
        _ Options: SwiftEOS_Sessions_IsUserInSessionOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_Sessions_IsUserInSession(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Join a session, creating a local session under a given session name.  Backend will validate various conditions to make sure it is possible to join the session.

    - Parameter Options: Structure containing information about the session to be joined
    - Parameter CompletionDelegate: A callback that is fired when the join operation completes, either successfully or in error
    - Returns: `EOS_Success` if the join completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_Sessions_SessionAlreadyExists` if the session is already exists or is in the process of being joined
    */
    private func ____JoinSession(
        _ Options: SwiftEOS_Sessions_JoinSessionOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Sessions_JoinSessionCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_JoinSession(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_JoinSessionCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Retrieve all existing invites for a single user

    - Parameter Options: Structure containing information about the invites to query
    - Parameter CompletionDelegate: A callback that is fired when the query invites operation completes, either successfully or in error
    */
    private func ____QueryInvites(
        _ Options: SwiftEOS_Sessions_QueryInvitesOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Sessions_QueryInvitesCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_QueryInvites(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_QueryInvitesCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Register a group of players with the session, allowing them to invite others or otherwise indicate they are part of the session for determining a full session

    - Parameter Options: Structure containing information about the session and players to be registered
    - Parameter CompletionDelegate: A callback that is fired when the registration operation completes, either successfully or in error
    - Returns: `EOS_Success` if the register completes successfully
               `EOS_NoChange` if the players to register registered previously
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_Sessions_OutOfSync` if the session is out of sync and will be updated on the next connection with the backend
               `EOS_NotFound` if a session to register players does not exist
    */
    private func ____RegisterPlayers(
        _ Options: SwiftEOS_Sessions_RegisterPlayersOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Sessions_RegisterPlayersCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_RegisterPlayers(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_RegisterPlayersCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Reject an invite from another player.

    - Parameter Options: Structure containing information about the invite to reject
    - Parameter CompletionDelegate: A callback that is fired when the reject invite operation completes, either successfully or in error
    - Returns: `EOS_Success` if the invite rejection completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_NotFound` if the invite does not exist
    */
    private func ____RejectInvite(
        _ Options: SwiftEOS_Sessions_RejectInviteOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Sessions_RejectInviteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_RejectInvite(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_RejectInviteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Send an invite to another player.  User must have created the session or be registered in the session or else the call will fail

    - Parameter Options: Structure containing information about the session and player to invite
    - Parameter CompletionDelegate: A callback that is fired when the send invite operation completes, either successfully or in error
    - Returns: `EOS_Success` if the send invite completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_NotFound` if the session to send the invite from does not exist
    */
    private func ____SendInvite(
        _ Options: SwiftEOS_Sessions_SendInviteOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Sessions_SendInviteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_SendInvite(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_SendInviteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Mark a session as started, making it unable to find if session properties indicate "join in progress" is not available

    - Parameter Options: Structure containing information about the session to be started
    - Parameter CompletionDelegate: A callback that is fired when the start operation completes, either successfully or in error
    - Returns: `EOS_Success` if the start completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_Sessions_OutOfSync` if the session is out of sync and will be updated on the next connection with the backend
               `EOS_NotFound` if a session to be started does not exist
    */
    private func ____StartSession(
        _ Options: SwiftEOS_Sessions_StartSessionOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Sessions_StartSessionCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_StartSession(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_StartSessionCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Unregister a group of players with the session, freeing up space for others to join

    - Parameter Options: Structure containing information about the session and players to be unregistered
    - Parameter CompletionDelegate: A callback that is fired when the unregistration operation completes, either successfully or in error
    - Returns: `EOS_Success` if the unregister completes successfully
               `EOS_NoChange` if the players to unregister were not found
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_Sessions_OutOfSync` if the session is out of sync and will be updated on the next connection with the backend
               `EOS_NotFound` if a session to be unregister players does not exist
    */
    private func ____UnregisterPlayers(
        _ Options: SwiftEOS_Sessions_UnregisterPlayersOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Sessions_UnregisterPlayersCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_UnregisterPlayers(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_UnregisterPlayersCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Update a session given a session modification handle created by `EOS_Sessions_CreateSessionModification` or `EOS_Sessions_UpdateSessionModification`

    - Parameter Options: Structure containing information about the session to be updated
    - Parameter CompletionDelegate: A callback that is fired when the update operation completes, either successfully or in error
    - Returns: `EOS_Success` if the update completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_Sessions_OutOfSync` if the session is out of sync and will be updated on the next connection with the backend
               `EOS_NotFound` if a session to be updated does not exist
    */
    private func ____UpdateSession(
        _ Options: SwiftEOS_Sessions_UpdateSessionOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Sessions_UpdateSessionCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_UpdateSession(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_UpdateSessionCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Creates a session modification handle (`EOS_HSessionModification`). The session modification handle is used to modify an existing session and can be applied with `EOS_Sessions_UpdateSession`.
    The `EOS_HSessionModification` must be released by calling `EOS_SessionModification_Release` once it is no longer needed.

    - Parameter Options: Required fields such as session name
    - Throws: - SeeAlso: `EOS_SessionModification_Release`
    - SeeAlso: `EOS_Sessions_UpdateSession`
    - SeeAlso: `EOS_HSessionModification`
    - Returns: Pointer to a Session Modification Handle only set if successful
    */
    private func ____UpdateSessionModification(
        _ Options: SwiftEOS_Sessions_UpdateSessionModificationOptions
    ) throws -> EOS_HSessionModification {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withHandleReturned(managedBy: pointerManager) { OutSessionModificationHandle in
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Sessions_UpdateSessionModification(
                                Handle,
                                Options,
                                OutSessionModificationHandle
                            ) } } } } }
    }
}
