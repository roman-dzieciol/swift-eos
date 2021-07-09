import Foundation
import EOSSDK
public class SwiftEOS_Presence_Actor: SwiftEOSActor {
    public let Handle: EOS_HPresence

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HPresence
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Register to receive notifications when a user accepts a join game option via the social overlay.
     * 
     * @note must call RemoveNotifyJoinGameAccepted to remove the notification
     * 
     * - Parameter Options:  Structure containing information about the request.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter NotificationFn:  A callback that is fired when a a notification is received.
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifyJoinGameAccepted(
        Options: SwiftEOS_Presence_AddNotifyJoinGameAcceptedOptions,
        NotificationFn: @escaping (SwiftEOS_Presence_JoinGameAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Presence_JoinGameAcceptedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Presence_AddNotifyJoinGameAccepted(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Presence_JoinGameAcceptedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyJoinGameAccepted(InId: notificationId) }
            ) }
    }

    /**
     * Register to receive notifications when presence changes. If the returned NotificationId is valid, you must call RemoveNotifyOnPresenceChanged when you no longer wish to
     * have your NotificationHandler called
     * 
     * - Parameter ClientData:  Data the is returned to when NotificationHandler is invoked
     * - Parameter NotificationHandler:  The callback to be fired when a presence change occurs
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_Presence_RemoveNotifyOnPresenceChanged
     */
    public func AddNotifyOnPresenceChanged(
        Options: SwiftEOS_Presence_AddNotifyOnPresenceChangedOptions,
        NotificationHandler: @escaping (SwiftEOS_Presence_PresenceChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Presence_PresenceChangedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationHandler,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Presence_AddNotifyOnPresenceChanged(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Presence_PresenceChangedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyOnPresenceChanged(NotificationId: notificationId) }
            ) }
    }

    /**
     * Get a user's cached presence object. If successful, this data must be released by calling EOS_Presence_Info_Release
     * 
     * - Parameter Options:  Object containing properties related to who is requesting presence and for what user
     * - Parameter OutPresence:  A pointer to a pointer of Presence Info. If the returned result is success, this will be set to data that must be later released, otherwise this will be set to NULL
     * @return Success if we have cached data, or an error result if the request was invalid or we do not have cached data.
     * 
     * @see EOS_Presence_Info_Release
     */
    public func CopyPresence(
        Options: SwiftEOS_Presence_CopyPresenceOptions
    ) throws -> SwiftEOS_Presence_Info? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutPresence in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Presence_CopyPresence(
                                Handle,
                                Options,
                                OutPresence
                            ) } } },
                release: EOS_Presence_Info_Release
            ) }
    }

    /**
     * Creates a presence modification handle. This handle can used to add multiple changes to your presence that can be applied with EOS_Presence_SetPresence.
     * The resulting handle must be released by calling EOS_PresenceModification_Release once it has been passed to EOS_Presence_SetPresence.
     * 
     * - Parameter Options:  Object containing properties related to the user modifying their presence
     * - Parameter OutPresenceModificationHandle:  Pointer to a Presence Modification Handle to be set if successful
     * @return Success if we successfully created the Presence Modification Handle pointed at in OutPresenceModificationHandle, or an error result if the input data was invalid
     * 
     * @see EOS_PresenceModification_Release
     * @see EOS_Presence_SetPresence
     * @see EOS_PresenceModification_SetStatus
     * @see EOS_PresenceModification_SetRawRichText
     * @see EOS_PresenceModification_SetData
     * @see EOS_PresenceModification_DeleteData
     */
    public func CreatePresenceModification(
        Options: SwiftEOS_Presence_CreatePresenceModificationOptions
    ) throws -> EOS_HPresenceModification? {
        try withPointerManager { pointerManager in
            try withPointeeReturned(managedBy: pointerManager) { OutPresenceModificationHandle in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Presence_CreatePresenceModification(
                            Handle,
                            Options,
                            OutPresenceModificationHandle
                        ) } } } }
    }

    /**
     * Gets a join info custom game-data string for a specific user. This is a helper function for reading the presence data related to how a user can be joined.
     * Its meaning is entirely application dependent.
     * This value will be valid only after a QueryPresence call has successfully completed.
     * 
     * - Parameter Options:  Object containing an associated user
     * - Parameter OutBuffer:  The buffer into which the character data should be written.  The buffer must be long enough to hold a string of EOS_PRESENCEMODIFICATION_JOININFO_MAX_LENGTH.
     * - Parameter InOutBufferLength:  Used as an input to define the OutBuffer length.
     *                          The input buffer should include enough space to be null-terminated.
     *                          When the function returns, this parameter will be filled with the length of the string copied into OutBuffer.
     * 
     * @return An EOS_EResult that indicates whether the location string was copied into the OutBuffer.
     *         EOS_Success if the information is available and passed out in OutBuffer
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if there is user or the location string was not found.
     *         EOS_LimitExceeded - The OutBuffer is not large enough to receive the location string. InOutBufferLength contains the required minimum length to perform the operation successfully.
     * 
     * @see EOS_PRESENCEMODIFICATION_JOININFO_MAX_LENGTH
     * - Parameter OutBuffer:  - array num: InOutBufferLength
     */
    public func GetJoinInfo(
        Options: SwiftEOS_Presence_GetJoinInfoOptions,
        OutBuffer: inout String?
    ) throws {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersFromInOutOptionalString(inoutOptionalString: &OutBuffer) { OutBuffer,InOutBufferLength in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Presence_GetJoinInfo(
                            Handle,
                            Options,
                            OutBuffer,
                            InOutBufferLength
                        ) } } } }
    }

    /**
     * Check if we already have presence for a user
     * 
     * - Parameter Options:  Object containing properties related to who is requesting presence and for what user
     * @return EOS_TRUE if we have presence for the requested user, or EOS_FALSE if the request was invalid or we do not have cached data
     */
    public func HasPresence(
        Options: SwiftEOS_Presence_HasPresenceOptions
    ) throws -> Bool {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Presence_HasPresence(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try swiftBoolFromEosBool($0) }
            ) }
    }

    /**
     * Query a user's presence. This must complete successfully before CopyPresence will have valid results. If HasPresence returns true for a remote
     * user, this does not need to be called.
     * 
     * - Parameter Options:  Object containing properties related to who is querying presence and for what user
     * - Parameter ClientData:  Optional pointer to help track this request, that is returned in the completion callback
     * - Parameter CompletionDelegate:  Pointer to a function that handles receiving the completion information
     */
    public func QueryPresence(
        Options: SwiftEOS_Presence_QueryPresenceOptions,
        CompletionDelegate: @escaping (SwiftEOS_Presence_QueryPresenceCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Presence_QueryPresence(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Presence_QueryPresenceCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Unregister from receiving notifications when a user accepts a join game option via the social overlay.
     * 
     * - Parameter InId:  Handle representing the registered callback
     */
    public func RemoveNotifyJoinGameAccepted(
        InId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_Presence_RemoveNotifyJoinGameAccepted(
                Handle,
                InId
            ) }
    }

    /**
     * Unregister a previously bound notification handler from receiving presence update notifications
     * 
     * - Parameter NotificationId:  The Notification ID representing the registered callback
     */
    public func RemoveNotifyOnPresenceChanged(
        NotificationId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_Presence_RemoveNotifyOnPresenceChanged(
                Handle,
                NotificationId
            ) }
    }

    /**
     * Sets your new presence with the data applied to a PresenceModificationHandle. The PresenceModificationHandle can be released safely after calling this function.
     * 
     * - Parameter Options:  Object containing a PresenceModificationHandle and associated user data
     * - Parameter ClientData:  Optional pointer to help track this request, that is returned in the completion callback
     * - Parameter CompletionDelegate:  Pointer to a function that handles receiving the completion information
     * 
     * @see EOS_Presence_CreatePresenceModification
     * @see EOS_PresenceModification_Release
     */
    public func SetPresence(
        Options: SwiftEOS_Presence_SetPresenceOptions,
        CompletionDelegate: @escaping (SwiftEOS_Presence_SetPresenceCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Presence_SetPresence(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Presence_SetPresenceCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
