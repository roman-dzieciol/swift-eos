import Foundation
import EOSSDK
public class SwiftEOS_Lobby_Actor: SwiftEOSActor {
    public let Handle: EOS_HLobby

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HLobby
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Register to receive notifications about lobby join game accepted by local user via the overlay.
     * 
     * - Note:  must call EOS_Lobby_RemoveNotifyJoinLobbyAccepted to remove the notification
     * 
     * - Parameter NotificationFn:  A callback that is fired when a notification is received.
     * 
     * - Returns:  handle representing the registered callback
     */
    public func AddNotifyJoinLobbyAccepted(
        NotificationFn: @escaping (SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfo> {
        try ____AddNotifyJoinLobbyAccepted(NotificationFn)
    }

    /**
     * Register to receive notifications about lobby invites accepted by local user via the overlay.
     * 
     * - Note:  must call RemoveNotifyLobbyInviteAccepted to remove the notification
     * 
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * - Returns:  handle representing the registered callback
     */
    public func AddNotifyLobbyInviteAccepted(
        NotificationFn: @escaping (SwiftEOS_Lobby_LobbyInviteAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyInviteAcceptedCallbackInfo> {
        try ____AddNotifyLobbyInviteAccepted(NotificationFn)
    }

    /**
     * Register to receive notifications about lobby invites sent to local users.
     * 
     * - Note:  must call RemoveNotifyLobbyInviteReceived to remove the notification
     * 
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * - Returns:  handle representing the registered callback
     */
    public func AddNotifyLobbyInviteReceived(
        NotificationFn: @escaping (SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfo> {
        try ____AddNotifyLobbyInviteReceived(NotificationFn)
    }

    /**
     * Register to receive notifications about the changing status of lobby members.
     * 
     * - Note:  must call RemoveNotifyLobbyMemberStatusReceived to remove the notification
     * 
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * - Returns:  handle representing the registered callback
     */
    public func AddNotifyLobbyMemberStatusReceived(
        NotificationFn: @escaping (SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo> {
        try ____AddNotifyLobbyMemberStatusReceived(NotificationFn)
    }

    /**
     * Register to receive notifications when a lobby member updates the attributes associated with themselves inside the lobby.
     * 
     * - Note:  must call RemoveNotifyLobbyMemberUpdateReceived to remove the notification
     * 
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * - Returns:  handle representing the registered callback
     */
    public func AddNotifyLobbyMemberUpdateReceived(
        NotificationFn: @escaping (SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo> {
        try ____AddNotifyLobbyMemberUpdateReceived(NotificationFn)
    }

    /**
     * Register to receive notifications when a lobby owner updates the attributes associated with the lobby.
     * 
     * - Note:  must call RemoveNotifyLobbyUpdateReceived to remove the notification
     * 
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * - Returns:  handle representing the registered callback
     */
    public func AddNotifyLobbyUpdateReceived(
        NotificationFn: @escaping (SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfo> {
        try ____AddNotifyLobbyUpdateReceived(NotificationFn)
    }

    /**
     * Register to receive notifications of when the RTC Room for a particular lobby has a connection status change.
     * The RTC Room connection status is independent of the lobby connection status, however the lobby system will attempt to keep
     * them consistent, automatically connecting to the RTC room after joining a lobby which has an associated RTC room and disconnecting
     * from the RTC room when a lobby is left or disconnected.
     * This notification is entirely informational and requires no action in response by the application. If the connected status is offline
     * (bIsConnected is EOS_FALSE), the connection will automatically attempt to reconnect. The purpose of this notification is to allow
     * applications to show the current connection status of the RTC room when the connection is not established.
     * Unlike EOS_RTC_AddNotifyDisconnected, EOS_RTC_LeaveRoom should not be called when the RTC room is disconnected.
     * This function will only succeed when called on a lobby the local user is currently a member of.
     * 
     * - Parameter LobbyId:  The ID of the lobby to receive RTC Room connection change notifications for 
     * - Parameter LocalUserId:  The Product User ID of the local user in the lobby 
     * - Parameter NotificationFn:  The function to call if the RTC Room's connection status changes
     * 
     * - Returns:  A valid notification ID if the NotificationFn was successfully registered, or EOS_INVALID_NOTIFICATIONID if the input was invalid, the lobby did not exist, or the lobby did not have an RTC room.
     * 
     * - SeeAlso:  EOS_Lobby_RemoveNotifyRTCRoomConnectionChanged
     */
    public func AddNotifyRTCRoomConnectionChanged(
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?,
        NotificationFn: @escaping (SwiftEOS_Lobby_RTCRoomConnectionChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_RTCRoomConnectionChangedCallbackInfo> {
        try ____AddNotifyRTCRoomConnectionChanged(
            .init(
                LobbyId: LobbyId,
                LocalUserId: LocalUserId
            ),
            NotificationFn
        )
    }

    /**
     * EOS_Lobby_CopyLobbyDetailsHandleByInviteId is used to immediately retrieve a handle to the lobby information from after notification of an invite
     * If the call returns an EOS_Success result, the out parameter, OutLobbyDetailsHandle, must be passed to EOS_LobbyDetails_Release to release the memory associated with it.
     * 
     * - Parameter InviteId:  The ID of an invitation to join the lobby 
     * 
     * - Returns:  EOS_Success if the information is available and passed out in OutLobbyDetailsHandle
     *         EOS_InvalidParameters if you pass an invalid invite ID or a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     *         EOS_NotFound If the invite ID cannot be found
     * 
     * - SeeAlso:  EOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions
     * - SeeAlso:  EOS_LobbyDetails_Release
     */
    public func CopyLobbyDetailsHandleByInviteId(
        InviteId: String?
    ) throws -> EOS_HLobbyDetails? {
        try ____CopyLobbyDetailsHandleByInviteId(.init(InviteId: InviteId))
    }

    /**
     * EOS_Lobby_CopyLobbyDetailsHandleByUiEventId is used to immediately retrieve a handle to the lobby information from after notification of an join game
     * If the call returns an EOS_Success result, the out parameter, OutLobbyDetailsHandle, must be passed to EOS_LobbyDetails_Release to release the memory associated with it.
     * 
     * - Parameter UiEventId:  UI Event associated with the lobby 
     * 
     * - Returns:  EOS_Success if the information is available and passed out in OutLobbyDetailsHandle
     *         EOS_InvalidParameters if you pass an invalid ui event ID
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     *         EOS_NotFound If the invite ID cannot be found
     * 
     * - SeeAlso:  EOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions
     * - SeeAlso:  EOS_LobbyDetails_Release
     */
    public func CopyLobbyDetailsHandleByUiEventId(
        UiEventId: EOS_UI_EventId
    ) throws -> EOS_HLobbyDetails? {
        try ____CopyLobbyDetailsHandleByUiEventId(.init(UiEventId: UiEventId))
    }

    /**
     * Creates a lobby and adds the user to the lobby membership.  There is no data associated with the lobby at the start and can be added vis EOS_Lobby_UpdateLobbyModification
     * If the lobby is successfully created with an RTC Room enabled, the lobby system will automatically join and maintain the connection to the RTC room as long as the
     * local user remains in the lobby. Applications can use the EOS_Lobby_GetRTCRoomName to get the name of the RTC Room associated with a lobby, which may be used with
     * many of the EOS_RTC_* suite of functions. This can be useful to: register for notifications for talking status; to mute or unmute the local user's audio output;
     * to block or unblock room participants; to set local audio device settings; and more.
     * 
     * - Parameter LocalUserId:  The Product User ID of the local user creating the lobby; this user will automatically join the lobby as its owner 
     * - Parameter MaxLobbyMembers:  The maximum number of users who can be in the lobby at a time 
     * - Parameter PermissionLevel:  The initial permission level of the lobby 
     * - Parameter bPresenceEnabled:  If true, this lobby will be associated with presence information. A user's presence can only be associated with one lobby at a time.
     * This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.
     * 
     * - Note:  The Social Overlay can handle only one of the following three options at a time:
     * * using the bPresenceEnabled flags within the Sessions interface
     * * using the bPresenceEnabled flags within the Lobby interface
     * * using EOS_PresenceModification_SetJoinInfo
     * 
     * - SeeAlso:  EOS_PresenceModification_SetJoinInfoOptions
     * - SeeAlso:  EOS_Lobby_JoinLobbyOptions
     * - SeeAlso:  EOS_Sessions_CreateSessionModificationOptions
     * - SeeAlso:  EOS_Sessions_JoinSessionOptions
     * - Parameter bAllowInvites:  Are members of the lobby allowed to invite others 
     * - Parameter BucketId:  Bucket ID associated with the lobby 
     * - Parameter bDisableHostMigration:  
     * Is host migration allowed (will the lobby stay open if the original host leaves?) 
     * NOTE: EOS_Lobby_PromoteMember is still allowed regardless of this setting 
     * - Parameter bEnableRTCRoom:  Creates a real-time communication (RTC) room for all members of this lobby. All members of the lobby will automatically join the RTC
     * room when they connect to the lobby and they will automatically leave the RTC room when they leave or are removed from the lobby.
     * While the joining and leaving of the RTC room is automatic, applications will still need to use the EOS RTC interfaces to handle all
     * other functionality for the room.
     * 
     * - SeeAlso:  EOS_Lobby_GetRTCRoomName
     * - SeeAlso:  EOS_Lobby_AddNotifyRTCRoomConnectionChanged
     * - Parameter LocalRTCOptions:  (Optional) Allows the local application to set local audio options for the RTC Room if it is enabled. Set this to NULL if the RTC
     * RTC room is disabled or you would like to use the defaults.
     * - Parameter LobbyId:  (Optional) Set to a globally unique value to override the backend assignment
     * If not specified the backend service will assign one to the lobby.  Do not mix and match override and non override settings.
     * This value can be of size [EOS_LOBBY_MIN_LOBBYIDOVERRIDE_LENGTH, EOS_LOBBY_MAX_LOBBYIDOVERRIDE_LENGTH]
     * - Parameter CompletionDelegate:  A callback that is fired when the create operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the creation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_LimitExceeded if the number of allowed lobbies is exceeded
     */
    public func CreateLobby(
        LocalUserId: EOS_ProductUserId?,
        MaxLobbyMembers: Int,
        PermissionLevel: EOS_ELobbyPermissionLevel,
        bPresenceEnabled: Bool,
        bAllowInvites: Bool,
        BucketId: String?,
        bDisableHostMigration: Bool,
        bEnableRTCRoom: Bool,
        LocalRTCOptions: SwiftEOS_Lobby_LocalRTCOptions?,
        LobbyId: String?,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_CreateLobbyCallbackInfo) -> Void
    ) throws {
        try ____CreateLobby(
            .init(
                LocalUserId: LocalUserId,
                MaxLobbyMembers: MaxLobbyMembers,
                PermissionLevel: PermissionLevel,
                bPresenceEnabled: bPresenceEnabled,
                bAllowInvites: bAllowInvites,
                BucketId: BucketId,
                bDisableHostMigration: bDisableHostMigration,
                bEnableRTCRoom: bEnableRTCRoom,
                LocalRTCOptions: LocalRTCOptions,
                LobbyId: LobbyId
            ),
            CompletionDelegate
        )
    }

    /**
     * Create a lobby search handle.  This handle may be modified to include various search parameters.
     * Searching is possible in three methods, all mutually exclusive
     * - set the lobby ID to find a specific lobby
     * - set the target user ID to find a specific user
     * - set lobby parameters to find an array of lobbies that match the search criteria (not available yet)
     * 
     * - Parameter MaxResults:  Maximum number of results allowed from the search 
     * 
     * - Returns:  EOS_Success if the search creation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func CreateLobbySearch(
        MaxResults: Int
    ) throws -> EOS_HLobbySearch? {
        try ____CreateLobbySearch(.init(MaxResults: MaxResults))
    }

    /**
     * Destroy a lobby given a lobby ID
     * 
     * - Parameter LocalUserId:  The Product User ID of the local user requesting destruction of the lobby; this user must currently own the lobby 
     * - Parameter LobbyId:  The ID of the lobby to destroy 
     * - Parameter CompletionDelegate:  A callback that is fired when the destroy operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the destroy completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_AlreadyPending if the lobby is already marked for destroy
     *         EOS_NotFound if the lobby to be destroyed does not exist
     */
    public func DestroyLobby(
        LocalUserId: EOS_ProductUserId?,
        LobbyId: String?,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_DestroyLobbyCallbackInfo) -> Void
    ) throws {
        try ____DestroyLobby(
            .init(
                LocalUserId: LocalUserId,
                LobbyId: LobbyId
            ),
            CompletionDelegate
        )
    }

    /**
     * Get the number of known invites for a given user
     * 
     * - Parameter LocalUserId:  The Product User ID of the local user whose cached lobby invitations you want to count 
     * 
     * - Returns:  number of known invites for a given user or 0 if there is an error
     */
    public func GetInviteCount(
        LocalUserId: EOS_ProductUserId?
    ) throws -> Int {
        try ____GetInviteCount(.init(LocalUserId: LocalUserId))
    }

    /**
     * Retrieve an invite ID from a list of active invites for a given user
     * 
     * - Parameter LocalUserId:  The Product User ID of the local user who received the cached invitation 
     * - Parameter Index:  The index of the invitation ID to retrieve 
     * 
     * - Returns:  EOS_Success if the input is valid and an invite ID was returned
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_NotFound if the invite doesn't exist
     * 
     * - SeeAlso:  EOS_Lobby_GetInviteCount
     * - SeeAlso:  EOS_Lobby_CopyLobbyDetailsHandleByInviteId
     */
    public func GetInviteIdByIndex(
        LocalUserId: EOS_ProductUserId?,
        Index: Int
    ) throws -> String? {
        try ____GetInviteIdByIndex(.init(
                LocalUserId: LocalUserId,
                Index: Index
            ))
    }

    /**
     * Get the name of the RTC room associated with a specific lobby a local user belongs to.
     * This value can be used whenever you need a RoomName value in the RTC_* suite of functions. RTC Room Names must not be used with
     * EOS_RTC_JoinRoom, EOS_RTC_LeaveRoom, or EOS_RTC_AddNotifyDisconnected. Doing so will return EOS_AccessDenied or
     * EOS_INVALID_NOTIFICATIONID if used with those functions.
     * This function will only succeed when called on a lobby the local user is currently a member of.
     * 
     * - Parameter LobbyId:  The ID of the lobby to get the RTC Room name for 
     * - Parameter LocalUserId:  The Product User ID of the local user in the lobby 
     * 
     * - Returns:  EOS_Success if a room exists for the specified lobby, there was enough space in OutBuffer, and the name was written successfully
     *         EOS_NotFound if the lobby does not exist
     *         EOS_Disabled if the lobby exists, but did not have the RTC Room feature enabled when created
     *         EOS_InvalidParameters if you pass a null pointer on invalid length for any of the parameters
     *         EOS_LimitExceeded The OutBuffer is not large enough to receive the room name. InOutBufferLength contains the required minimum length to perform the operation successfully.
     */
    public func GetRTCRoomName(
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?
    ) throws -> String? {
        try ____GetRTCRoomName(.init(
                LobbyId: LobbyId,
                LocalUserId: LocalUserId
            ))
    }

    /**
     * Get the current connection status of the RTC Room for a lobby.
     * The RTC Room connection status is independent of the lobby connection status, however the lobby system will attempt to keep
     * them consistent, automatically connecting to the RTC room after joining a lobby which has an associated RTC room and disconnecting
     * from the RTC room when a lobby is left or disconnected.
     * This function will only succeed when called on a lobby the local user is currently a member of.
     * 
     * - Parameter LobbyId:  The ID of the lobby to get the RTC Room name for 
     * - Parameter LocalUserId:  The Product User ID of the local user in the lobby 
     * 
     * - Returns:  EOS_Success if we are connected to the specified lobby, the input options and parameters were valid and we were able to write to bOutIsConnected successfully.
     *         EOS_NotFound if the lobby doesn't exist
     *         EOS_Disabled if the lobby exists, but did not have the RTC Room feature enabled when created
     *         EOS_InvalidParameters if bOutIsConnected is NULL, or any other parameters are NULL or invalid
     * 
     * - SeeAlso:  EOS_Lobby_AddNotifyRTCRoomConnectionChanged
     */
    public func IsRTCRoomConnected(
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?
    ) throws -> Bool? {
        try ____IsRTCRoomConnected(.init(
                LobbyId: LobbyId,
                LocalUserId: LocalUserId
            ))
    }

    /**
     * Join a lobby, creating a local instance under a given lobby ID.  Backend will validate various conditions to make sure it is possible to join the lobby.
     * If the lobby is successfully join has an RTC Room enabled, the lobby system will automatically join and maintain the connection to the RTC room as long as the
     * local user remains in the lobby. Applications can use the EOS_Lobby_GetRTCRoomName to get the name of the RTC Room associated with a lobby, which may be used with
     * many of the EOS_RTC_* suite of functions. This can be useful to: register for notifications for talking status; to mute or unmute the local user's audio output;
     * to block or unblock room participants; to set local audio device settings; and more.
     * 
     * - Parameter LobbyDetailsHandle:  The handle of the lobby to join 
     * - Parameter LocalUserId:  The Product User ID of the local user joining the lobby 
     * - Parameter bPresenceEnabled:  If true, this lobby will be associated with the user's presence information. A user can only associate one lobby at a time with their presence information.
     * This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.
     * 
     * - Note:  The Social Overlay can handle only one of the following three options at a time:
     * * using the bPresenceEnabled flags within the Sessions interface
     * * using the bPresenceEnabled flags within the Lobby interface
     * * using EOS_PresenceModification_SetJoinInfo
     * 
     * - SeeAlso:  EOS_PresenceModification_SetJoinInfoOptions
     * - SeeAlso:  EOS_Lobby_CreateLobbyOptions
     * - SeeAlso:  EOS_Lobby_JoinLobbyOptions
     * - SeeAlso:  EOS_Sessions_CreateSessionModificationOptions
     * - SeeAlso:  EOS_Sessions_JoinSessionOptions
     * - Parameter LocalRTCOptions:  (Optional) Set this value to override the default local options for the RTC Room, if it is enabled for this lobby. Set this to NULL if
     * your application does not use the Lobby RTC Rooms feature, or if you would like to use the default settings. This option is ignored if
     * the specified lobby does not have an RTC Room enabled and will not cause errors.
     * - Parameter CompletionDelegate:  A callback that is fired when the join operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the destroy completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func JoinLobby(
        LobbyDetailsHandle: EOS_HLobbyDetails?,
        LocalUserId: EOS_ProductUserId?,
        bPresenceEnabled: Bool,
        LocalRTCOptions: SwiftEOS_Lobby_LocalRTCOptions?,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_JoinLobbyCallbackInfo) -> Void
    ) throws {
        try ____JoinLobby(
            .init(
                LobbyDetailsHandle: LobbyDetailsHandle,
                LocalUserId: LocalUserId,
                bPresenceEnabled: bPresenceEnabled,
                LocalRTCOptions: LocalRTCOptions
            ),
            CompletionDelegate
        )
    }

    /**
     * Kick an existing member from the lobby
     * 
     * - Parameter LobbyId:  The ID of the lobby 
     * - Parameter LocalUserId:  The Product User ID of the local user requesting the removal; this user must be the lobby owner 
     * - Parameter TargetUserId:  The Product User ID of the lobby member to remove 
     * - Parameter CompletionDelegate:  A callback that is fired when the kick operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the kick completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Lobby_NotOwner if the calling user is not the owner of the lobby
     *         EOS_NotFound if a lobby of interest does not exist
     */
    public func KickMember(
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_KickMemberCallbackInfo) -> Void
    ) throws {
        try ____KickMember(
            .init(
                LobbyId: LobbyId,
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ),
            CompletionDelegate
        )
    }

    /**
     * Leave a lobby given a lobby ID
     * If the lobby you are leaving had an RTC Room enabled, leaving the lobby will also automatically leave the RTC room.
     * 
     * - Parameter LocalUserId:  The Product User ID of the local user leaving the lobby 
     * - Parameter LobbyId:  The ID of the lobby 
     * - Parameter CompletionDelegate:  A callback that is fired when the leave operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the leave completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_AlreadyPending if the lobby is already marked for leave
     *         EOS_NotFound if a lobby to be left does not exist
     */
    public func LeaveLobby(
        LocalUserId: EOS_ProductUserId?,
        LobbyId: String?,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_LeaveLobbyCallbackInfo) -> Void
    ) throws {
        try ____LeaveLobby(
            .init(
                LocalUserId: LocalUserId,
                LobbyId: LobbyId
            ),
            CompletionDelegate
        )
    }

    /**
     * Promote an existing member of the lobby to owner, allowing them to make lobby data modifications
     * 
     * - Parameter LobbyId:  The ID of the lobby 
     * - Parameter LocalUserId:  The Product User ID of the local user making the request 
     * - Parameter TargetUserId:  The Product User ID of the member to promote to owner of the lobby 
     * - Parameter CompletionDelegate:  A callback that is fired when the promotion operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the promote completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Lobby_NotOwner if the calling user is not the owner of the lobby
     *         EOS_NotFound if the lobby of interest does not exist
     */
    public func PromoteMember(
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_PromoteMemberCallbackInfo) -> Void
    ) throws {
        try ____PromoteMember(
            .init(
                LobbyId: LobbyId,
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ),
            CompletionDelegate
        )
    }

    /**
     * Retrieve all existing invites for a single user
     * 
     * - Parameter LocalUserId:  The Product User ID of the local user whose invitations you want to retrieve 
     * - Parameter CompletionDelegate:  A callback that is fired when the query invites operation completes, either successfully or in error
     * 
     */
    public func QueryInvites(
        LocalUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_QueryInvitesCallbackInfo) -> Void
    ) throws {
        try ____QueryInvites(
            .init(LocalUserId: LocalUserId),
            CompletionDelegate
        )
    }

    /**
     * Reject an invite from another user.
     * 
     * - Parameter InviteId:  The ID of the lobby associated with the invitation 
     * - Parameter LocalUserId:  The Product User ID of the local user who is rejecting the invitation 
     * - Parameter CompletionDelegate:  A callback that is fired when the reject invite operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the invite rejection completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_NotFound if the invite does not exist
     */
    public func RejectInvite(
        InviteId: String?,
        LocalUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_RejectInviteCallbackInfo) -> Void
    ) throws {
        try ____RejectInvite(
            .init(
                InviteId: InviteId,
                LocalUserId: LocalUserId
            ),
            CompletionDelegate
        )
    }

    /**
     * Send an invite to another user.  User must be a member of the lobby or else the call will fail
     * 
     * - Parameter LobbyId:  The ID of the lobby associated with the invitation 
     * - Parameter LocalUserId:  The Product User ID of the local user sending the invitation 
     * - Parameter TargetUserId:  The Product User ID of the user receiving the invitation 
     * - Parameter CompletionDelegate:  A callback that is fired when the send invite operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the send invite completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_NotFound if the lobby to send the invite from does not exist
     */
    public func SendInvite(
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_SendInviteCallbackInfo) -> Void
    ) throws {
        try ____SendInvite(
            .init(
                LobbyId: LobbyId,
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ),
            CompletionDelegate
        )
    }

    /**
     * Update a lobby given a lobby modification handle created by EOS_Lobby_UpdateLobbyModification
     * 
     * - Parameter LobbyModificationHandle:  Builder handle 
     * - Parameter CompletionDelegate:  A callback that is fired when the update operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the update completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Lobby_NotOwner if the lobby modification contains modifications that are only allowed by the owner
     *         EOS_NotFound if the lobby to update does not exist
     */
    public func UpdateLobby(
        LobbyModificationHandle: EOS_HLobbyModification?,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_UpdateLobbyCallbackInfo) -> Void
    ) throws {
        try ____UpdateLobby(
            .init(LobbyModificationHandle: LobbyModificationHandle),
            CompletionDelegate
        )
    }

    /**
     * Creates a lobby modification handle (EOS_HLobbyModification). The lobby modification handle is used to modify an existing lobby and can be applied with EOS_Lobby_UpdateLobby.
     * The EOS_HLobbyModification must be released by calling EOS_LobbyModification_Release once it is no longer needed.
     * 
     * - Parameter LocalUserId:  The ID of the local user making modifications. Must be the owner to modify lobby data, but any lobby member can modify their own attributes. 
     * - Parameter LobbyId:  The ID of the lobby 
     * - Returns:  EOS_Success if we successfully created the Lobby Modification Handle pointed at in OutLobbyModificationHandle, or an error result if the input data was invalid
     * 		   EOS_InvalidParameters if any of the options are incorrect
     * 
     * - SeeAlso:  EOS_LobbyModification_Release
     * - SeeAlso:  EOS_Lobby_UpdateLobby
     * - SeeAlso:  EOS_HLobbyModification
     */
    public func UpdateLobbyModification(
        LocalUserId: EOS_ProductUserId?,
        LobbyId: String?
    ) throws -> EOS_HLobbyModification? {
        try ____UpdateLobbyModification(.init(
                LocalUserId: LocalUserId,
                LobbyId: LobbyId
            ))
    }
}

extension SwiftEOS_Lobby_Actor {

    /**
     * Register to receive notifications about lobby join game accepted by local user via the overlay.
     * 
     * - Note:  must call EOS_Lobby_RemoveNotifyJoinLobbyAccepted to remove the notification
     * 
     * - Parameter NotificationFn:  A callback that is fired when a notification is received.
     * 
     * - Returns:  handle representing the registered callback
     */
    private func ____AddNotifyJoinLobbyAccepted(
        _ NotificationFn: @escaping (SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Lobby_AddNotifyJoinLobbyAcceptedOptions(), managedBy: pointerManager) { Options in
                        EOS_Lobby_AddNotifyJoinLobbyAccepted(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Lobby_RemoveNotifyJoinLobbyAccepted(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Register to receive notifications about lobby invites accepted by local user via the overlay.
     * 
     * - Note:  must call RemoveNotifyLobbyInviteAccepted to remove the notification
     * 
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * - Returns:  handle representing the registered callback
     */
    private func ____AddNotifyLobbyInviteAccepted(
        _ NotificationFn: @escaping (SwiftEOS_Lobby_LobbyInviteAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyInviteAcceptedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Lobby_AddNotifyLobbyInviteAcceptedOptions(), managedBy: pointerManager) { Options in
                        EOS_Lobby_AddNotifyLobbyInviteAccepted(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Lobby_LobbyInviteAcceptedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Lobby_RemoveNotifyLobbyInviteAccepted(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Register to receive notifications about lobby invites sent to local users.
     * 
     * - Note:  must call RemoveNotifyLobbyInviteReceived to remove the notification
     * 
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * - Returns:  handle representing the registered callback
     */
    private func ____AddNotifyLobbyInviteReceived(
        _ NotificationFn: @escaping (SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Lobby_AddNotifyLobbyInviteReceivedOptions(), managedBy: pointerManager) { Options in
                        EOS_Lobby_AddNotifyLobbyInviteReceived(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Lobby_RemoveNotifyLobbyInviteReceived(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Register to receive notifications about the changing status of lobby members.
     * 
     * - Note:  must call RemoveNotifyLobbyMemberStatusReceived to remove the notification
     * 
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * - Returns:  handle representing the registered callback
     */
    private func ____AddNotifyLobbyMemberStatusReceived(
        _ NotificationFn: @escaping (SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Lobby_AddNotifyLobbyMemberStatusReceivedOptions(), managedBy: pointerManager) { Options in
                        EOS_Lobby_AddNotifyLobbyMemberStatusReceived(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Lobby_RemoveNotifyLobbyMemberStatusReceived(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Register to receive notifications when a lobby member updates the attributes associated with themselves inside the lobby.
     * 
     * - Note:  must call RemoveNotifyLobbyMemberUpdateReceived to remove the notification
     * 
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * - Returns:  handle representing the registered callback
     */
    private func ____AddNotifyLobbyMemberUpdateReceived(
        _ NotificationFn: @escaping (SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Lobby_AddNotifyLobbyMemberUpdateReceivedOptions(), managedBy: pointerManager) { Options in
                        EOS_Lobby_AddNotifyLobbyMemberUpdateReceived(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Lobby_RemoveNotifyLobbyMemberUpdateReceived(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Register to receive notifications when a lobby owner updates the attributes associated with the lobby.
     * 
     * - Note:  must call RemoveNotifyLobbyUpdateReceived to remove the notification
     * 
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * - Returns:  handle representing the registered callback
     */
    private func ____AddNotifyLobbyUpdateReceived(
        _ NotificationFn: @escaping (SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Lobby_AddNotifyLobbyUpdateReceivedOptions(), managedBy: pointerManager) { Options in
                        EOS_Lobby_AddNotifyLobbyUpdateReceived(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Lobby_RemoveNotifyLobbyUpdateReceived(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Register to receive notifications of when the RTC Room for a particular lobby has a connection status change.
     * The RTC Room connection status is independent of the lobby connection status, however the lobby system will attempt to keep
     * them consistent, automatically connecting to the RTC room after joining a lobby which has an associated RTC room and disconnecting
     * from the RTC room when a lobby is left or disconnected.
     * This notification is entirely informational and requires no action in response by the application. If the connected status is offline
     * (bIsConnected is EOS_FALSE), the connection will automatically attempt to reconnect. The purpose of this notification is to allow
     * applications to show the current connection status of the RTC room when the connection is not established.
     * Unlike EOS_RTC_AddNotifyDisconnected, EOS_RTC_LeaveRoom should not be called when the RTC room is disconnected.
     * This function will only succeed when called on a lobby the local user is currently a member of.
     * 
     * - Parameter Options:  Structure containing information about the lobby to receive updates about
     * - Parameter NotificationFn:  The function to call if the RTC Room's connection status changes
     * 
     * - Returns:  A valid notification ID if the NotificationFn was successfully registered, or EOS_INVALID_NOTIFICATIONID if the input was invalid, the lobby did not exist, or the lobby did not have an RTC room.
     * 
     * - SeeAlso:  EOS_Lobby_RemoveNotifyRTCRoomConnectionChanged
     */
    private func ____AddNotifyRTCRoomConnectionChanged(
        _ Options: SwiftEOS_Lobby_AddNotifyRTCRoomConnectionChangedOptions,
        _ NotificationFn: @escaping (SwiftEOS_Lobby_RTCRoomConnectionChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_RTCRoomConnectionChangedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Lobby_AddNotifyRTCRoomConnectionChanged(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Lobby_RTCRoomConnectionChangedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Lobby_RemoveNotifyRTCRoomConnectionChanged(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * EOS_Lobby_CopyLobbyDetailsHandleByInviteId is used to immediately retrieve a handle to the lobby information from after notification of an invite
     * If the call returns an EOS_Success result, the out parameter, OutLobbyDetailsHandle, must be passed to EOS_LobbyDetails_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * 
     * - Returns:  EOS_Success if the information is available and passed out in OutLobbyDetailsHandle
     *         EOS_InvalidParameters if you pass an invalid invite ID or a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     *         EOS_NotFound If the invite ID cannot be found
     * 
     * - SeeAlso:  EOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions
     * - SeeAlso:  EOS_LobbyDetails_Release
     */
    private func ____CopyLobbyDetailsHandleByInviteId(
        _ Options: SwiftEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions
    ) throws -> EOS_HLobbyDetails? {
        try withPointerManager { pointerManager in
            try withPointeeReturned(managedBy: pointerManager) { OutLobbyDetailsHandle in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Lobby_CopyLobbyDetailsHandleByInviteId(
                            Handle,
                            Options,
                            OutLobbyDetailsHandle
                        ) } } } }
    }

    /**
     * EOS_Lobby_CopyLobbyDetailsHandleByUiEventId is used to immediately retrieve a handle to the lobby information from after notification of an join game
     * If the call returns an EOS_Success result, the out parameter, OutLobbyDetailsHandle, must be passed to EOS_LobbyDetails_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * 
     * - Returns:  EOS_Success if the information is available and passed out in OutLobbyDetailsHandle
     *         EOS_InvalidParameters if you pass an invalid ui event ID
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     *         EOS_NotFound If the invite ID cannot be found
     * 
     * - SeeAlso:  EOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions
     * - SeeAlso:  EOS_LobbyDetails_Release
     */
    private func ____CopyLobbyDetailsHandleByUiEventId(
        _ Options: SwiftEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions
    ) throws -> EOS_HLobbyDetails? {
        try withPointerManager { pointerManager in
            try withPointeeReturned(managedBy: pointerManager) { OutLobbyDetailsHandle in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Lobby_CopyLobbyDetailsHandleByUiEventId(
                            Handle,
                            Options,
                            OutLobbyDetailsHandle
                        ) } } } }
    }

    /**
     * Creates a lobby and adds the user to the lobby membership.  There is no data associated with the lobby at the start and can be added vis EOS_Lobby_UpdateLobbyModification
     * If the lobby is successfully created with an RTC Room enabled, the lobby system will automatically join and maintain the connection to the RTC room as long as the
     * local user remains in the lobby. Applications can use the EOS_Lobby_GetRTCRoomName to get the name of the RTC Room associated with a lobby, which may be used with
     * many of the EOS_RTC_* suite of functions. This can be useful to: register for notifications for talking status; to mute or unmute the local user's audio output;
     * to block or unblock room participants; to set local audio device settings; and more.
     * 
     * - Parameter Options:  Required fields for the creation of a lobby such as a user count and its starting advertised state
     * - Parameter CompletionDelegate:  A callback that is fired when the create operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the creation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_LimitExceeded if the number of allowed lobbies is exceeded
     */
    private func ____CreateLobby(
        _ Options: SwiftEOS_Lobby_CreateLobbyOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Lobby_CreateLobbyCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Lobby_CreateLobby(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Lobby_CreateLobbyCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Create a lobby search handle.  This handle may be modified to include various search parameters.
     * Searching is possible in three methods, all mutually exclusive
     * - set the lobby ID to find a specific lobby
     * - set the target user ID to find a specific user
     * - set lobby parameters to find an array of lobbies that match the search criteria (not available yet)
     * 
     * - Parameter Options:  Structure containing required parameters such as the maximum number of search results
     * 
     * - Returns:  EOS_Success if the search creation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    private func ____CreateLobbySearch(
        _ Options: SwiftEOS_Lobby_CreateLobbySearchOptions
    ) throws -> EOS_HLobbySearch? {
        try withPointerManager { pointerManager in
            try withPointeeReturned(managedBy: pointerManager) { OutLobbySearchHandle in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Lobby_CreateLobbySearch(
                            Handle,
                            Options,
                            OutLobbySearchHandle
                        ) } } } }
    }

    /**
     * Destroy a lobby given a lobby ID
     * 
     * - Parameter Options:  Structure containing information about the lobby to be destroyed
     * - Parameter CompletionDelegate:  A callback that is fired when the destroy operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the destroy completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_AlreadyPending if the lobby is already marked for destroy
     *         EOS_NotFound if the lobby to be destroyed does not exist
     */
    private func ____DestroyLobby(
        _ Options: SwiftEOS_Lobby_DestroyLobbyOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Lobby_DestroyLobbyCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Lobby_DestroyLobby(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Lobby_DestroyLobbyCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Get the number of known invites for a given user
     * 
     * - Parameter Options:  the Options associated with retrieving the current invite count
     * 
     * - Returns:  number of known invites for a given user or 0 if there is an error
     */
    private func ____GetInviteCount(
        _ Options: SwiftEOS_Lobby_GetInviteCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Lobby_GetInviteCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Retrieve an invite ID from a list of active invites for a given user
     * 
     * - Parameter Options:  Structure containing the input parameters
     * 
     * - Returns:  EOS_Success if the input is valid and an invite ID was returned
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_NotFound if the invite doesn't exist
     * 
     * - SeeAlso:  EOS_Lobby_GetInviteCount
     * - SeeAlso:  EOS_Lobby_CopyLobbyDetailsHandleByInviteId
     */
    private func ____GetInviteIdByIndex(
        _ Options: SwiftEOS_Lobby_GetInviteIdByIndexOptions
    ) throws -> String? {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersReturnedAsOptionalString { OutBuffer,InOutBufferLength in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Lobby_GetInviteIdByIndex(
                            Handle,
                            Options,
                            OutBuffer,
                            InOutBufferLength
                        ) } } } }
    }

    /**
     * Get the name of the RTC room associated with a specific lobby a local user belongs to.
     * This value can be used whenever you need a RoomName value in the RTC_* suite of functions. RTC Room Names must not be used with
     * EOS_RTC_JoinRoom, EOS_RTC_LeaveRoom, or EOS_RTC_AddNotifyDisconnected. Doing so will return EOS_AccessDenied or
     * EOS_INVALID_NOTIFICATIONID if used with those functions.
     * This function will only succeed when called on a lobby the local user is currently a member of.
     * 
     * - Parameter Options:  Structure containing information about the RTC room name to retrieve
     * 
     * - Returns:  EOS_Success if a room exists for the specified lobby, there was enough space in OutBuffer, and the name was written successfully
     *         EOS_NotFound if the lobby does not exist
     *         EOS_Disabled if the lobby exists, but did not have the RTC Room feature enabled when created
     *         EOS_InvalidParameters if you pass a null pointer on invalid length for any of the parameters
     *         EOS_LimitExceeded The OutBuffer is not large enough to receive the room name. InOutBufferLength contains the required minimum length to perform the operation successfully.
     */
    private func ____GetRTCRoomName(
        _ Options: SwiftEOS_Lobby_GetRTCRoomNameOptions
    ) throws -> String? {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersReturnedAsOptionalString { OutBuffer,InOutBufferLength in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Lobby_GetRTCRoomName(
                            Handle,
                            Options,
                            OutBuffer,
                            InOutBufferLength
                        ) } } } }
    }

    /**
     * Get the current connection status of the RTC Room for a lobby.
     * The RTC Room connection status is independent of the lobby connection status, however the lobby system will attempt to keep
     * them consistent, automatically connecting to the RTC room after joining a lobby which has an associated RTC room and disconnecting
     * from the RTC room when a lobby is left or disconnected.
     * This function will only succeed when called on a lobby the local user is currently a member of.
     * 
     * - Parameter Options:  Structure containing information about the lobby to query the RTC Room connection status for
     * 
     * - Returns:  EOS_Success if we are connected to the specified lobby, the input options and parameters were valid and we were able to write to bOutIsConnected successfully.
     *         EOS_NotFound if the lobby doesn't exist
     *         EOS_Disabled if the lobby exists, but did not have the RTC Room feature enabled when created
     *         EOS_InvalidParameters if bOutIsConnected is NULL, or any other parameters are NULL or invalid
     * 
     * - SeeAlso:  EOS_Lobby_AddNotifyRTCRoomConnectionChanged
     */
    private func ____IsRTCRoomConnected(
        _ Options: SwiftEOS_Lobby_IsRTCRoomConnectedOptions
    ) throws -> Bool? {
        try withPointerManager { pointerManager in
            try withEosBoolPointerReturnedAsSwiftBool { bOutIsConnected in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Lobby_IsRTCRoomConnected(
                            Handle,
                            Options,
                            bOutIsConnected
                        ) } } } }
    }

    /**
     * Join a lobby, creating a local instance under a given lobby ID.  Backend will validate various conditions to make sure it is possible to join the lobby.
     * If the lobby is successfully join has an RTC Room enabled, the lobby system will automatically join and maintain the connection to the RTC room as long as the
     * local user remains in the lobby. Applications can use the EOS_Lobby_GetRTCRoomName to get the name of the RTC Room associated with a lobby, which may be used with
     * many of the EOS_RTC_* suite of functions. This can be useful to: register for notifications for talking status; to mute or unmute the local user's audio output;
     * to block or unblock room participants; to set local audio device settings; and more.
     * 
     * - Parameter Options:  Structure containing information about the lobby to be joined
     * - Parameter CompletionDelegate:  A callback that is fired when the join operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the destroy completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    private func ____JoinLobby(
        _ Options: SwiftEOS_Lobby_JoinLobbyOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Lobby_JoinLobbyCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Lobby_JoinLobby(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Lobby_JoinLobbyCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Kick an existing member from the lobby
     * 
     * - Parameter Options:  Structure containing information about the lobby and member to be kicked
     * - Parameter CompletionDelegate:  A callback that is fired when the kick operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the kick completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Lobby_NotOwner if the calling user is not the owner of the lobby
     *         EOS_NotFound if a lobby of interest does not exist
     */
    private func ____KickMember(
        _ Options: SwiftEOS_Lobby_KickMemberOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Lobby_KickMemberCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Lobby_KickMember(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Lobby_KickMemberCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Leave a lobby given a lobby ID
     * If the lobby you are leaving had an RTC Room enabled, leaving the lobby will also automatically leave the RTC room.
     * 
     * - Parameter Options:  Structure containing information about the lobby to be left
     * - Parameter CompletionDelegate:  A callback that is fired when the leave operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the leave completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_AlreadyPending if the lobby is already marked for leave
     *         EOS_NotFound if a lobby to be left does not exist
     */
    private func ____LeaveLobby(
        _ Options: SwiftEOS_Lobby_LeaveLobbyOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Lobby_LeaveLobbyCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Lobby_LeaveLobby(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Lobby_LeaveLobbyCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Promote an existing member of the lobby to owner, allowing them to make lobby data modifications
     * 
     * - Parameter Options:  Structure containing information about the lobby and member to be promoted
     * - Parameter CompletionDelegate:  A callback that is fired when the promotion operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the promote completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Lobby_NotOwner if the calling user is not the owner of the lobby
     *         EOS_NotFound if the lobby of interest does not exist
     */
    private func ____PromoteMember(
        _ Options: SwiftEOS_Lobby_PromoteMemberOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Lobby_PromoteMemberCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Lobby_PromoteMember(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Lobby_PromoteMemberCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Retrieve all existing invites for a single user
     * 
     * - Parameter Options:  Structure containing information about the invites to query
     * - Parameter CompletionDelegate:  A callback that is fired when the query invites operation completes, either successfully or in error
     * 
     */
    private func ____QueryInvites(
        _ Options: SwiftEOS_Lobby_QueryInvitesOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Lobby_QueryInvitesCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Lobby_QueryInvites(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Lobby_QueryInvitesCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Reject an invite from another user.
     * 
     * - Parameter Options:  Structure containing information about the invite to reject
     * - Parameter CompletionDelegate:  A callback that is fired when the reject invite operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the invite rejection completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_NotFound if the invite does not exist
     */
    private func ____RejectInvite(
        _ Options: SwiftEOS_Lobby_RejectInviteOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Lobby_RejectInviteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Lobby_RejectInvite(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Lobby_RejectInviteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Send an invite to another user.  User must be a member of the lobby or else the call will fail
     * 
     * - Parameter Options:  Structure containing information about the lobby and user to invite
     * - Parameter CompletionDelegate:  A callback that is fired when the send invite operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the send invite completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_NotFound if the lobby to send the invite from does not exist
     */
    private func ____SendInvite(
        _ Options: SwiftEOS_Lobby_SendInviteOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Lobby_SendInviteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Lobby_SendInvite(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Lobby_SendInviteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Update a lobby given a lobby modification handle created by EOS_Lobby_UpdateLobbyModification
     * 
     * - Parameter Options:  Structure containing information about the lobby to be updated
     * - Parameter CompletionDelegate:  A callback that is fired when the update operation completes, either successfully or in error
     * 
     * - Returns:  EOS_Success if the update completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Lobby_NotOwner if the lobby modification contains modifications that are only allowed by the owner
     *         EOS_NotFound if the lobby to update does not exist
     */
    private func ____UpdateLobby(
        _ Options: SwiftEOS_Lobby_UpdateLobbyOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Lobby_UpdateLobbyCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Lobby_UpdateLobby(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Lobby_UpdateLobbyCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Creates a lobby modification handle (EOS_HLobbyModification). The lobby modification handle is used to modify an existing lobby and can be applied with EOS_Lobby_UpdateLobby.
     * The EOS_HLobbyModification must be released by calling EOS_LobbyModification_Release once it is no longer needed.
     * 
     * - Parameter Options:  Required fields such as lobby ID
     * - Returns:  EOS_Success if we successfully created the Lobby Modification Handle pointed at in OutLobbyModificationHandle, or an error result if the input data was invalid
     * 		   EOS_InvalidParameters if any of the options are incorrect
     * 
     * - SeeAlso:  EOS_LobbyModification_Release
     * - SeeAlso:  EOS_Lobby_UpdateLobby
     * - SeeAlso:  EOS_HLobbyModification
     */
    private func ____UpdateLobbyModification(
        _ Options: SwiftEOS_Lobby_UpdateLobbyModificationOptions
    ) throws -> EOS_HLobbyModification? {
        try withPointerManager { pointerManager in
            try withPointeeReturned(managedBy: pointerManager) { OutLobbyModificationHandle in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Lobby_UpdateLobbyModification(
                            Handle,
                            Options,
                            OutLobbyModificationHandle
                        ) } } } }
    }
}
