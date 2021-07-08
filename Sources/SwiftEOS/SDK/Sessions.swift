import Foundation
import EOSSDK
public class SwiftEOS_Sessions_Actor: SwiftEOSActor {
    public let Handle: EOS_HSessions

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HSessions
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Register to receive notifications when a user accepts a session join game via the social overlay.
     * 
     * @note must call RemoveNotifyJoinSessionAccepted to remove the notification
     * 
     * - Parameter Options:  Structure containing information about the request.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifyJoinSessionAccepted(
        Options: SwiftEOS_Sessions_AddNotifyJoinSessionAcceptedOptions,
        NotificationFn: @escaping (SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Sessions_AddNotifyJoinSessionAccepted(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyJoinSessionAccepted(InId: notificationId) }
            ) }
    }

    /**
     * Register to receive notifications when a user accepts a session invite via the social overlay.
     * 
     * @note must call RemoveNotifySessionInviteAccepted to remove the notification
     * 
     * - Parameter Options:  Structure containing information about the request.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifySessionInviteAccepted(
        Options: SwiftEOS_Sessions_AddNotifySessionInviteAcceptedOptions,
        NotificationFn: @escaping (SwiftEOS_Sessions_SessionInviteAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Sessions_SessionInviteAcceptedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Sessions_AddNotifySessionInviteAccepted(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Sessions_SessionInviteAcceptedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifySessionInviteAccepted(InId: notificationId) }
            ) }
    }

    /**
     * Register to receive session invites.
     * 
     * @note must call RemoveNotifySessionInviteReceived to remove the notification
     * 
     * - Parameter Options:  Structure containing information about the session invite notification
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter NotificationFn:  A callback that is fired when a session invite for a user has been received
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifySessionInviteReceived(
        Options: SwiftEOS_Sessions_AddNotifySessionInviteReceivedOptions,
        NotificationFn: @escaping (SwiftEOS_Sessions_SessionInviteReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Sessions_SessionInviteReceivedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Sessions_AddNotifySessionInviteReceived(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Sessions_SessionInviteReceivedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifySessionInviteReceived(InId: notificationId) }
            ) }
    }

    /**
     * EOS_Sessions_CopySessionHandleByInviteId is used to immediately retrieve a handle to the session information from after notification of an invite
     * If the call returns an EOS_Success result, the out parameter, OutSessionHandle, must be passed to EOS_SessionDetails_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutSessionHandle:  out parameter used to receive the session handle
     * 
     * @return EOS_Success if the information is available and passed out in OutSessionHandle
     *         EOS_InvalidParameters if you pass an invalid invite ID or a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     *         EOS_NotFound if the invite ID cannot be found
     * 
     * @see EOS_Sessions_CopySessionHandleByInviteIdOptions
     * @see EOS_SessionDetails_Release
     */
    public func CopySessionHandleByInviteId(
        Options: SwiftEOS_Sessions_CopySessionHandleByInviteIdOptions,
        OutSessionHandle: inout EOS_HSessionDetails?
    ) throws {
        try withPointerManager { pointerManager in
            try withOptionalTrivialMutablePointerFromInOutOptionalTrivial(&OutSessionHandle, managedBy: pointerManager) { OutSessionHandle in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Sessions_CopySessionHandleByInviteId(
                            Handle,
                            Options,
                            OutSessionHandle
                        ) } } } }
    }

    /**
     * EOS_Sessions_CopySessionHandleByUiEventId is used to immediately retrieve a handle to the session information from after notification of a join game event.
     * If the call returns an EOS_Success result, the out parameter, OutSessionHandle, must be passed to EOS_SessionDetails_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutSessionHandle:  out parameter used to receive the session handle
     * 
     * @return EOS_Success if the information is available and passed out in OutSessionHandle
     *         EOS_InvalidParameters if you pass an invalid invite ID or a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     *         EOS_NotFound if the invite ID cannot be found
     * 
     * @see EOS_Sessions_CopySessionHandleByUiEventIdOptions
     * @see EOS_SessionDetails_Release
     */
    public func CopySessionHandleByUiEventId(
        Options: SwiftEOS_Sessions_CopySessionHandleByUiEventIdOptions,
        OutSessionHandle: inout EOS_HSessionDetails?
    ) throws {
        try withPointerManager { pointerManager in
            try withOptionalTrivialMutablePointerFromInOutOptionalTrivial(&OutSessionHandle, managedBy: pointerManager) { OutSessionHandle in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Sessions_CopySessionHandleByUiEventId(
                            Handle,
                            Options,
                            OutSessionHandle
                        ) } } } }
    }

    /**
     * EOS_Sessions_CopySessionHandleForPresence is used to immediately retrieve a handle to the session information which was marked with bPresenceEnabled on create or join.
     * If the call returns an EOS_Success result, the out parameter, OutSessionHandle, must be passed to EOS_SessionDetails_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutSessionHandle:  out parameter used to receive the session handle
     * 
     * @return EOS_Success if the information is available and passed out in OutSessionHandle
     *         EOS_InvalidParameters if you pass an invalid invite ID or a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     *         EOS_NotFound if there is no session with bPresenceEnabled
     * 
     * @see EOS_Sessions_CopySessionHandleForPresenceOptions
     * @see EOS_SessionDetails_Release
     */
    public func CopySessionHandleForPresence(
        Options: SwiftEOS_Sessions_CopySessionHandleForPresenceOptions,
        OutSessionHandle: inout EOS_HSessionDetails?
    ) throws {
        try withPointerManager { pointerManager in
            try withOptionalTrivialMutablePointerFromInOutOptionalTrivial(&OutSessionHandle, managedBy: pointerManager) { OutSessionHandle in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Sessions_CopySessionHandleForPresence(
                            Handle,
                            Options,
                            OutSessionHandle
                        ) } } } }
    }

    /**
     * Creates a session modification handle (EOS_HSessionModification).  The session modification handle is used to build a new session and can be applied with EOS_Sessions_UpdateSession
     * The EOS_HSessionModification must be released by calling EOS_SessionModification_Release once it no longer needed.
     * 
     * - Parameter Options:  Required fields for the creation of a session such as a name, bucketid, and max players
     * - Parameter OutSessionModificationHandle:  Pointer to a Session Modification Handle only set if successful
     * @return EOS_Success if we successfully created the Session Modification Handle pointed at in OutSessionModificationHandle, or an error result if the input data was invalid
     * 
     * @see EOS_SessionModification_Release
     * @see EOS_Sessions_UpdateSession
     * @see EOS_HSessionModification
     */
    public func CreateSessionModification(
        Options: SwiftEOS_Sessions_CreateSessionModificationOptions,
        OutSessionModificationHandle: inout EOS_HSessionModification?
    ) throws {
        try withPointerManager { pointerManager in
            try withOptionalTrivialMutablePointerFromInOutOptionalTrivial(&OutSessionModificationHandle, managedBy: pointerManager) { OutSessionModificationHandle in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Sessions_CreateSessionModification(
                            Handle,
                            Options,
                            OutSessionModificationHandle
                        ) } } } }
    }

    /**
     * Create a session search handle.  This handle may be modified to include various search parameters.
     * Searching is possible in three methods, all mutually exclusive
     * - set the session ID to find a specific session
     * - set the target user ID to find a specific user
     * - set session parameters to find an array of sessions that match the search criteria
     * 
     * - Parameter Options:  Structure containing required parameters such as the maximum number of search results
     * - Parameter OutSessionSearchHandle:  The new search handle or null if there was an error creating the search handle
     * 
     * @return EOS_Success if the search creation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func CreateSessionSearch(
        Options: SwiftEOS_Sessions_CreateSessionSearchOptions,
        OutSessionSearchHandle: inout EOS_HSessionSearch?
    ) throws {
        try withPointerManager { pointerManager in
            try withOptionalTrivialMutablePointerFromInOutOptionalTrivial(&OutSessionSearchHandle, managedBy: pointerManager) { OutSessionSearchHandle in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Sessions_CreateSessionSearch(
                            Handle,
                            Options,
                            OutSessionSearchHandle
                        ) } } } }
    }

    /**
     * Destroy a session given a session name
     * 
     * - Parameter Options:  Structure containing information about the session to be destroyed
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the destroy operation completes, either successfully or in error
     * 
     * @return EOS_Success if the destroy completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_AlreadyPending if the session is already marked for destroy
     *         EOS_NotFound if a session to be destroyed does not exist
     */
    public func DestroySession(
        Options: SwiftEOS_Sessions_DestroySessionOptions,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_DestroySessionCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_DestroySession(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_DestroySessionCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Dump the contents of active sessions that exist locally to the log output, purely for debug purposes
     * 
     * - Parameter Options:  Options related to dumping session state such as the session name
     * 
     * @return EOS_Success if the output operation completes successfully
     *         EOS_NotFound if the session specified does not exist
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func DumpSessionState(
        Options: SwiftEOS_Sessions_DumpSessionStateOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_Sessions_DumpSessionState(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Mark a session as ended, making it available to find if "join in progress" was disabled.  The session may be started again if desired
     * 
     * - Parameter Options:  Structure containing information about the session to be ended
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the end operation completes, either successfully or in error
     * 
     * @return EOS_Success if the end completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Sessions_OutOfSync if the session is out of sync and will be updated on the next connection with the backend
     *         EOS_NotFound if a session to be ended does not exist
     */
    public func EndSession(
        Options: SwiftEOS_Sessions_EndSessionOptions,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_EndSessionCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_EndSession(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_EndSessionCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
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
        Options: SwiftEOS_Sessions_GetInviteCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Sessions_GetInviteCount(
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
     * @return EOS_Success if the input is valid and an invite ID was returned
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_NotFound if the invite doesn't exist
     * 
     * @see EOS_Sessions_GetInviteCount
     * @see EOS_Sessions_CopySessionHandleByInviteId
     * - Parameter OutBuffer:  - array num: InOutBufferLength
     */
    public func GetInviteIdByIndex(
        Options: SwiftEOS_Sessions_GetInviteIdByIndexOptions,
        OutBuffer: inout String?
    ) throws {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersFromInOutOptionalString(inoutOptionalString: &OutBuffer) { OutBuffer,InOutBufferLength in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Sessions_GetInviteIdByIndex(
                            Handle,
                            Options,
                            OutBuffer,
                            InOutBufferLength
                        ) } } } }
    }

    /**
     * EOS_Sessions_IsUserInSession returns whether or not a given user can be found in a specified session
     * 
     * - Parameter Options:  Structure containing the input parameters
     * 
     * @return EOS_Success if the user is found in the specified session
     * 		   EOS_NotFound if the user is not found in the specified session
     * 		   EOS_InvalidParameters if you pass an invalid invite ID or a null pointer for the out parameter
     * 		   EOS_IncompatibleVersion if the API version passed in is incorrect
     * 		   EOS_Invalid_ProductUserID if an invalid target user is specified
     * 		   EOS_Sessions_InvalidSession if the session specified is invalid
     */
    public func IsUserInSession(
        Options: SwiftEOS_Sessions_IsUserInSessionOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_Sessions_IsUserInSession(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Join a session, creating a local session under a given session name.  Backend will validate various conditions to make sure it is possible to join the session.
     * 
     * - Parameter Options:  Structure containing information about the session to be joined
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the join operation completes, either successfully or in error
     * 
     * @return EOS_Success if the join completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Sessions_SessionAlreadyExists if the session is already exists or is in the process of being joined
     */
    public func JoinSession(
        Options: SwiftEOS_Sessions_JoinSessionOptions,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_JoinSessionCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_JoinSession(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_JoinSessionCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
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
        Options: SwiftEOS_Sessions_QueryInvitesOptions,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_QueryInvitesCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_QueryInvites(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_QueryInvitesCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Register a group of players with the session, allowing them to invite others or otherwise indicate they are part of the session for determining a full session
     * 
     * - Parameter Options:  Structure containing information about the session and players to be registered
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the registration operation completes, either successfully or in error
     * 
     * @return EOS_Success if the register completes successfully
     *         EOS_NoChange if the players to register registered previously
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Sessions_OutOfSync if the session is out of sync and will be updated on the next connection with the backend
     *         EOS_NotFound if a session to register players does not exist
     */
    public func RegisterPlayers(
        Options: SwiftEOS_Sessions_RegisterPlayersOptions,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_RegisterPlayersCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_RegisterPlayers(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_RegisterPlayersCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Reject an invite from another player.
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
        Options: SwiftEOS_Sessions_RejectInviteOptions,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_RejectInviteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_RejectInvite(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_RejectInviteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Unregister from receiving notifications when a user accepts a session join game via the social overlay.
     * 
     * - Parameter InId:  Handle representing the registered callback
     */
    public func RemoveNotifyJoinSessionAccepted(
        InId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_Sessions_RemoveNotifyJoinSessionAccepted(
                Handle,
                InId
            ) }
    }

    /**
     * Unregister from receiving notifications when a user accepts a session invite via the social overlay.
     * 
     * - Parameter InId:  Handle representing the registered callback
     */
    public func RemoveNotifySessionInviteAccepted(
        InId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_Sessions_RemoveNotifySessionInviteAccepted(
                Handle,
                InId
            ) }
    }

    /**
     * Unregister from receiving session invites.
     * 
     * - Parameter InId:  Handle representing the registered callback
     */
    public func RemoveNotifySessionInviteReceived(
        InId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_Sessions_RemoveNotifySessionInviteReceived(
                Handle,
                InId
            ) }
    }

    /**
     * Send an invite to another player.  User must have created the session or be registered in the session or else the call will fail
     * 
     * - Parameter Options:  Structure containing information about the session and player to invite
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the send invite operation completes, either successfully or in error
     * 
     * @return EOS_Success if the send invite completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_NotFound if the session to send the invite from does not exist
     */
    public func SendInvite(
        Options: SwiftEOS_Sessions_SendInviteOptions,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_SendInviteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_SendInvite(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_SendInviteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Mark a session as started, making it unable to find if session properties indicate "join in progress" is not available
     * 
     * - Parameter Options:  Structure containing information about the session to be started
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the start operation completes, either successfully or in error
     * 
     * @return EOS_Success if the start completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Sessions_OutOfSync if the session is out of sync and will be updated on the next connection with the backend
     *         EOS_NotFound if a session to be started does not exist
     */
    public func StartSession(
        Options: SwiftEOS_Sessions_StartSessionOptions,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_StartSessionCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_StartSession(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_StartSessionCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Unregister a group of players with the session, freeing up space for others to join
     * 
     * - Parameter Options:  Structure containing information about the session and players to be unregistered
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the unregistration operation completes, either successfully or in error
     * 
     * @return EOS_Success if the unregister completes successfully
     *         EOS_NoChange if the players to unregister were not found
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Sessions_OutOfSync if the session is out of sync and will be updated on the next connection with the backend
     *         EOS_NotFound if a session to be unregister players does not exist
     */
    public func UnregisterPlayers(
        Options: SwiftEOS_Sessions_UnregisterPlayersOptions,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_UnregisterPlayersCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_UnregisterPlayers(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_UnregisterPlayersCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Update a session given a session modification handle created by EOS_Sessions_CreateSessionModification or EOS_Sessions_UpdateSessionModification
     * 
     * - Parameter Options:  Structure containing information about the session to be updated
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the update operation completes, either successfully or in error
     * 
     * @return EOS_Success if the update completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_Sessions_OutOfSync if the session is out of sync and will be updated on the next connection with the backend
     *         EOS_NotFound if a session to be updated does not exist
     */
    public func UpdateSession(
        Options: SwiftEOS_Sessions_UpdateSessionOptions,
        CompletionDelegate: @escaping (SwiftEOS_Sessions_UpdateSessionCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sessions_UpdateSession(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sessions_UpdateSessionCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Creates a session modification handle (EOS_HSessionModification). The session modification handle is used to modify an existing session and can be applied with EOS_Sessions_UpdateSession.
     * The EOS_HSessionModification must be released by calling EOS_SessionModification_Release once it is no longer needed.
     * 
     * - Parameter Options:  Required fields such as session name
     * - Parameter OutSessionModificationHandle:  Pointer to a Session Modification Handle only set if successful
     * @return EOS_Success if we successfully created the Session Modification Handle pointed at in OutSessionModificationHandle, or an error result if the input data was invalid
     * 
     * @see EOS_SessionModification_Release
     * @see EOS_Sessions_UpdateSession
     * @see EOS_HSessionModification
     */
    public func UpdateSessionModification(
        Options: SwiftEOS_Sessions_UpdateSessionModificationOptions,
        OutSessionModificationHandle: inout EOS_HSessionModification?
    ) throws {
        try withPointerManager { pointerManager in
            try withOptionalTrivialMutablePointerFromInOutOptionalTrivial(&OutSessionModificationHandle, managedBy: pointerManager) { OutSessionModificationHandle in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Sessions_UpdateSessionModification(
                            Handle,
                            Options,
                            OutSessionModificationHandle
                        ) } } } }
    }
}
