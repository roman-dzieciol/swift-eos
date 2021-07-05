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
     * @note must call EOS_Lobby_RemoveNotifyJoinLobbyAccepted to remove the notification
     * 
     * - Parameter Options:  Structure containing information about the request.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter NotificationFn:  A callback that is fired when a notification is received.
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifyJoinLobbyAccepted(
        Options: SwiftEOS_Lobby_AddNotifyJoinLobbyAcceptedOptions,
        NotificationFn: @escaping (SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Lobby_AddNotifyJoinLobbyAccepted(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyJoinLobbyAccepted(InId: notificationId) }
            ) }
    }

    /**
     * Register to receive notifications about lobby invites accepted by local user via the overlay.
     * 
     * @note must call RemoveNotifyLobbyInviteAccepted to remove the notification
     * 
     * - Parameter Options:  Structure containing information about the request.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifyLobbyInviteAccepted(
        Options: SwiftEOS_Lobby_AddNotifyLobbyInviteAcceptedOptions,
        NotificationFn: @escaping (SwiftEOS_Lobby_LobbyInviteAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyInviteAcceptedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Lobby_AddNotifyLobbyInviteAccepted(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Lobby_LobbyInviteAcceptedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyLobbyInviteAccepted(InId: notificationId) }
            ) }
    }

    /**
     * Register to receive notifications about lobby invites sent to local users.
     * 
     * @note must call RemoveNotifyLobbyInviteReceived to remove the notification
     * 
     * - Parameter Options:  Structure containing information about the request.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifyLobbyInviteReceived(
        Options: SwiftEOS_Lobby_AddNotifyLobbyInviteReceivedOptions,
        NotificationFn: @escaping (SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Lobby_AddNotifyLobbyInviteReceived(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyLobbyInviteReceived(InId: notificationId) }
            ) }
    }

    /**
     * Register to receive notifications about the changing status of lobby members.
     * 
     * @note must call RemoveNotifyLobbyMemberStatusReceived to remove the notification
     * 
     * - Parameter Options:  Structure containing information about the request.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifyLobbyMemberStatusReceived(
        Options: SwiftEOS_Lobby_AddNotifyLobbyMemberStatusReceivedOptions,
        NotificationFn: @escaping (SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Lobby_AddNotifyLobbyMemberStatusReceived(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyLobbyMemberStatusReceived(InId: notificationId) }
            ) }
    }

    /**
     * Register to receive notifications when a lobby member updates the attributes associated with themselves inside the lobby.
     * 
     * @note must call RemoveNotifyLobbyMemberUpdateReceived to remove the notification
     * 
     * - Parameter Options:  Structure containing information about the request.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifyLobbyMemberUpdateReceived(
        Options: SwiftEOS_Lobby_AddNotifyLobbyMemberUpdateReceivedOptions,
        NotificationFn: @escaping (SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Lobby_AddNotifyLobbyMemberUpdateReceived(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyLobbyMemberUpdateReceived(InId: notificationId) }
            ) }
    }

    /**
     * Register to receive notifications when a lobby owner updates the attributes associated with the lobby.
     * 
     * @note must call RemoveNotifyLobbyUpdateReceived to remove the notification
     * 
     * - Parameter Options:  Structure containing information about the request.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifyLobbyUpdateReceived(
        Options: SwiftEOS_Lobby_AddNotifyLobbyUpdateReceivedOptions,
        NotificationFn: @escaping (SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Lobby_AddNotifyLobbyUpdateReceived(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyLobbyUpdateReceived(InId: notificationId) }
            ) }
    }

    /**
     * EOS_Lobby_CopyLobbyDetailsHandleByInviteId is used to immediately retrieve a handle to the lobby information from after notification of an invite
     * If the call returns an EOS_Success result, the out parameter, OutLobbyDetailsHandle, must be passed to EOS_LobbyDetails_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutLobbyDetailsHandle:  out parameter used to receive the lobby handle
     * 
     * @return EOS_Success if the information is available and passed out in OutLobbyDetailsHandle
     *         EOS_InvalidParameters if you pass an invalid invite ID or a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     *         EOS_NotFound If the invite ID cannot be found
     * 
     * @see EOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions
     * @see EOS_LobbyDetails_Release
     */
    public func CopyLobbyDetailsHandleByInviteId(
        Options: SwiftEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions,
        OutLobbyDetailsHandle: inout EOS_HLobbyDetails?
    ) throws {
        try withPointerManager { pointerManager in
            try withOptionalTrivialMutablePointerFromInOutOptionalTrivial(&OutLobbyDetailsHandle, managedBy: pointerManager) { OutLobbyDetailsHandle in
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
     * - Parameter OutLobbyDetailsHandle:  out parameter used to receive the lobby handle
     * 
     * @return EOS_Success if the information is available and passed out in OutLobbyDetailsHandle
     *         EOS_InvalidParameters if you pass an invalid ui event ID
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     *         EOS_NotFound If the invite ID cannot be found
     * 
     * @see EOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions
     * @see EOS_LobbyDetails_Release
     */
    public func CopyLobbyDetailsHandleByUiEventId(
        Options: SwiftEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions,
        OutLobbyDetailsHandle: inout EOS_HLobbyDetails?
    ) throws {
        try withPointerManager { pointerManager in
            try withOptionalTrivialMutablePointerFromInOutOptionalTrivial(&OutLobbyDetailsHandle, managedBy: pointerManager) { OutLobbyDetailsHandle in
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
     * 
     * - Parameter Options:  Required fields for the creation of a lobby such as a user count and its starting advertised state
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the create operation completes, either successfully or in error
     * 
     * @return EOS_Success if the creation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_LimitExceeded if the number of allowed lobbies is exceeded
     */
    public func CreateLobby(
        Options: SwiftEOS_Lobby_CreateLobbyOptions,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_CreateLobbyCallbackInfo) -> Void
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
     * - Parameter OutLobbySearchHandle:  The new search handle or null if there was an error creating the search handle
     * 
     * @return EOS_Success if the search creation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func CreateLobbySearch(
        Options: SwiftEOS_Lobby_CreateLobbySearchOptions,
        OutLobbySearchHandle: inout EOS_HLobbySearch?
    ) throws {
        try withPointerManager { pointerManager in
            try withOptionalTrivialMutablePointerFromInOutOptionalTrivial(&OutLobbySearchHandle, managedBy: pointerManager) { OutLobbySearchHandle in
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
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the destroy operation completes, either successfully or in error
     * 
     * @return EOS_Success if the destroy completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_AlreadyPending if the lobby is already marked for destroy
     *         EOS_NotFound if the lobby to be destroyed does not exist
     */
    public func DestroyLobby(
        Options: SwiftEOS_Lobby_DestroyLobbyOptions,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_DestroyLobbyCallbackInfo) -> Void
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
     * @return number of known invites for a given user or 0 if there is an error
     */
    public func GetInviteCount(
        Options: SwiftEOS_Lobby_GetInviteCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try typecastIntResult { 
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Lobby_GetInviteCount(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Retrieve an invite ID from a list of active invites for a given user
     * 
     * - Parameter Options:  Structure containing the input parameters
     * 
     * @return EOS_Success if the input is valid and an invite ID was returned
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_NotFound if the invite doesn't exist
     * 
     * @see EOS_Lobby_GetInviteCount
     * @see EOS_Lobby_CopyLobbyDetailsHandleByInviteId
     * - Parameter OutBuffer:  - array num: InOutBufferLength
     */
    public func GetInviteIdByIndex(
        Options: SwiftEOS_Lobby_GetInviteIdByIndexOptions,
        OutBuffer: inout String?
    ) throws {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersFromInOutOptionalString(inoutOptionalString: &OutBuffer) { OutBuffer,InOutBufferLength in
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
     * Join a lobby, creating a local instance under a given lobby ID.  Backend will validate various conditions to make sure it is possible to join the lobby.
     * 
     * - Parameter Options:  Structure containing information about the lobby to be joined
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the join operation completes, either successfully or in error
     * 
     * @return EOS_Success if the destroy completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func JoinLobby(
        Options: SwiftEOS_Lobby_JoinLobbyOptions,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_JoinLobbyCallbackInfo) -> Void
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
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the kick operation completes, either successfully or in error
     * 
     * @return EOS_Success if the kick completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Lobby_NotOwner if the calling user is not the owner of the lobby
     *         EOS_NotFound if a lobby of interest does not exist
     */
    public func KickMember(
        Options: SwiftEOS_Lobby_KickMemberOptions,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_KickMemberCallbackInfo) -> Void
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
     * 
     * - Parameter Options:  Structure containing information about the lobby to be left
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the leave operation completes, either successfully or in error
     * 
     * @return EOS_Success if the leave completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_AlreadyPending if the lobby is already marked for leave
     *         EOS_NotFound if a lobby to be left does not exist
     */
    public func LeaveLobby(
        Options: SwiftEOS_Lobby_LeaveLobbyOptions,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_LeaveLobbyCallbackInfo) -> Void
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
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the promotion operation completes, either successfully or in error
     * 
     * @return EOS_Success if the promote completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Lobby_NotOwner if the calling user is not the owner of the lobby
     *         EOS_NotFound if the lobby of interest does not exist
     */
    public func PromoteMember(
        Options: SwiftEOS_Lobby_PromoteMemberOptions,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_PromoteMemberCallbackInfo) -> Void
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
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the query invites operation completes, either successfully or in error
     * 
     */
    public func QueryInvites(
        Options: SwiftEOS_Lobby_QueryInvitesOptions,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_QueryInvitesCallbackInfo) -> Void
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
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the reject invite operation completes, either successfully or in error
     * 
     * @return EOS_Success if the invite rejection completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_NotFound if the invite does not exist
     */
    public func RejectInvite(
        Options: SwiftEOS_Lobby_RejectInviteOptions,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_RejectInviteCallbackInfo) -> Void
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
     * Unregister from receiving notifications when a user accepts a lobby invitation via the overlay.
     * 
     * - Parameter InId:  Handle representing the registered callback
     */
    public func RemoveNotifyJoinLobbyAccepted(
        InId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_Lobby_RemoveNotifyJoinLobbyAccepted(
                Handle,
                InId
            ) }
    }

    /**
     * Unregister from receiving notifications when a user accepts a lobby invitation via the overlay.
     * 
     * - Parameter InId:  Handle representing the registered callback
     */
    public func RemoveNotifyLobbyInviteAccepted(
        InId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_Lobby_RemoveNotifyLobbyInviteAccepted(
                Handle,
                InId
            ) }
    }

    /**
     * Unregister from receiving notifications when a user receives a lobby invitation.
     * 
     * - Parameter InId:  Handle representing the registered callback
     */
    public func RemoveNotifyLobbyInviteReceived(
        InId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_Lobby_RemoveNotifyLobbyInviteReceived(
                Handle,
                InId
            ) }
    }

    /**
     * Unregister from receiving notifications when lobby members status change.
     * 
     * - Parameter InId:  Handle representing the registered callback
     */
    public func RemoveNotifyLobbyMemberStatusReceived(
        InId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_Lobby_RemoveNotifyLobbyMemberStatusReceived(
                Handle,
                InId
            ) }
    }

    /**
     * Unregister from receiving notifications when lobby members change their data.
     * 
     * - Parameter InId:  Handle representing the registered callback
     */
    public func RemoveNotifyLobbyMemberUpdateReceived(
        InId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_Lobby_RemoveNotifyLobbyMemberUpdateReceived(
                Handle,
                InId
            ) }
    }

    /**
     * Unregister from receiving notifications when a lobby changes its data.
     * 
     * - Parameter InId:  Handle representing the registered callback
     */
    public func RemoveNotifyLobbyUpdateReceived(
        InId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_Lobby_RemoveNotifyLobbyUpdateReceived(
                Handle,
                InId
            ) }
    }

    /**
     * Send an invite to another user.  User must be a member of the lobby or else the call will fail
     * 
     * - Parameter Options:  Structure containing information about the lobby and user to invite
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the send invite operation completes, either successfully or in error
     * 
     * @return EOS_Success if the send invite completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_NotFound if the lobby to send the invite from does not exist
     */
    public func SendInvite(
        Options: SwiftEOS_Lobby_SendInviteOptions,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_SendInviteCallbackInfo) -> Void
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
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the update operation completes, either successfully or in error
     * 
     * @return EOS_Success if the update completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Lobby_NotOwner if the lobby modification contains modifications that are only allowed by the owner
     *         EOS_NotFound if the lobby to update does not exist
     */
    public func UpdateLobby(
        Options: SwiftEOS_Lobby_UpdateLobbyOptions,
        CompletionDelegate: @escaping (SwiftEOS_Lobby_UpdateLobbyCallbackInfo) -> Void
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
     * - Parameter OutLobbyModificationHandle:  Pointer to a Lobby Modification Handle only set if successful
     * @return EOS_Success if we successfully created the Lobby Modification Handle pointed at in OutLobbyModificationHandle, or an error result if the input data was invalid
     * 		   EOS_InvalidParameters if any of the options are incorrect
     * 
     * @see EOS_LobbyModification_Release
     * @see EOS_Lobby_UpdateLobby
     * @see EOS_HLobbyModification
     */
    public func UpdateLobbyModification(
        Options: SwiftEOS_Lobby_UpdateLobbyModificationOptions,
        OutLobbyModificationHandle: inout EOS_HLobbyModification?
    ) throws {
        try withPointerManager { pointerManager in
            try withOptionalTrivialMutablePointerFromInOutOptionalTrivial(&OutLobbyModificationHandle, managedBy: pointerManager) { OutLobbyModificationHandle in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Lobby_UpdateLobbyModification(
                            Handle,
                            Options,
                            OutLobbyModificationHandle
                        ) } } } }
    }
}
