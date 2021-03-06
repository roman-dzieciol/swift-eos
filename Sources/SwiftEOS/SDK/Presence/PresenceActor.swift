import Foundation
import EOSSDK

public final class SwiftEOS_Presence_Actor: SwiftEOSActor {
    public let Handle: EOS_HPresence?

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HPresence?
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
    Register to receive notifications when a user accepts a join game option via the social overlay.

    - Note: must call RemoveNotifyJoinGameAccepted to remove the notification
    - Parameter NotificationFn: A callback that is fired when a a notification is received.
    - Returns: handle representing the registered callback
    */
    public func AddNotifyJoinGameAccepted(
        NotificationFn: @escaping (SwiftEOS_Presence_JoinGameAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Presence_JoinGameAcceptedCallbackInfo> {
        try ____AddNotifyJoinGameAccepted(NotificationFn)
    }

    /**
    Register to receive notifications when presence changes. If the returned NotificationId is valid, you must call RemoveNotifyOnPresenceChanged when you no longer wish to
    have your NotificationHandler called

    - Parameter NotificationHandler: The callback to be fired when a presence change occurs
    - Returns: Notification ID representing the registered callback if successful, an invalid NotificationId if not
    - SeeAlso: `EOS_INVALID_NOTIFICATIONID`
    - SeeAlso: `EOS_Presence_RemoveNotifyOnPresenceChanged`
    */
    public func AddNotifyOnPresenceChanged(
        NotificationHandler: @escaping (SwiftEOS_Presence_PresenceChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Presence_PresenceChangedCallbackInfo> {
        try ____AddNotifyOnPresenceChanged(NotificationHandler)
    }

    /**
    Get a user's cached presence object. If successful, this data must be released by calling `EOS_Presence_Info_Release`

    - Parameter LocalUserId: The Epic Online Services Account ID of the local, logged-in user making the request
    - Parameter TargetUserId: The Epic Online Services Account ID of the user whose cached presence data you want to copy from the cache
    - Throws: Success if we have cached data, or an error result if the request was invalid or we do not have cached data.
    - SeeAlso: `EOS_Presence_Info_Release`
    - Returns: A pointer to a pointer of Presence Info. If the returned result is success, this will be set to data that must be later released, otherwise this will be set to NULL
    */
    public func CopyPresence(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) throws -> SwiftEOS_Presence_Info {
        try ____CopyPresence(.init(
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ))
    }

    /**
    Creates a presence modification handle. This handle can used to add multiple changes to your presence that can be applied with `EOS_Presence_SetPresence`.
    The resulting handle must be released by calling `EOS_PresenceModification_Release` once it has been passed to `EOS_Presence_SetPresence`.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user's Epic Online Services Account ID
    - Throws: Success if we successfully created the Presence Modification Handle pointed at in OutPresenceModificationHandle, or an error result if the input data was invalid
    - SeeAlso: `EOS_PresenceModification_Release`
    - SeeAlso: `EOS_Presence_SetPresence`
    - SeeAlso: `EOS_PresenceModification_SetStatus`
    - SeeAlso: `EOS_PresenceModification_SetRawRichText`
    - SeeAlso: `EOS_PresenceModification_SetData`
    - SeeAlso: `EOS_PresenceModification_DeleteData`
    - Returns: Pointer to a Presence Modification Handle to be set if successful
    */
    public func CreatePresenceModification(
        LocalUserId: EOS_EpicAccountId?
    ) throws -> EOS_HPresenceModification {
        try ____CreatePresenceModification(.init(LocalUserId: LocalUserId))
    }

    /**
    Gets a join info custom game-data string for a specific user. This is a helper function for reading the presence data related to how a user can be joined.
    Its meaning is entirely application dependent.

    This value will be valid only after a QueryPresence call has successfully completed.

    - Parameter LocalUserId: The local user's Epic Online Services Account ID
    - Parameter TargetUserId: The Epic Online Services Account ID to query for join info; this value must either be a logged-in local user, or a friend of that user
    - Throws: An `EOS_EResult` that indicates whether the location string was copied into the OutBuffer.
              `EOS_Success` if the information is available and passed out in OutBuffer
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if there is user or the location string was not found.
              `EOS_LimitExceeded` - The OutBuffer is not large enough to receive the location string. InOutBufferLength contains the required minimum length to perform the operation successfully.
    - SeeAlso: `EOS_PRESENCEMODIFICATION_JOININFO_MAX_LENGTH`
    - Returns: The buffer into which the character data should be written.  The buffer must be long enough to hold a string of `EOS_PRESENCEMODIFICATION_JOININFO_MAX_LENGTH`.
    */
    public func GetJoinInfo(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) throws -> String {
        try ____GetJoinInfo(.init(
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ))
    }

    /**
    Check if we already have presence for a user

    - Parameter LocalUserId: The Epic Online Services Account ID of the local, logged-in user making the request
    - Parameter TargetUserId: The Epic Online Services Account ID of the user whose cached presence data you want to locate
    - Returns: `EOS_TRUE` if we have presence for the requested user, or `EOS_FALSE` if the request was invalid or we do not have cached data
    */
    public func HasPresence(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) throws -> Bool {
        try ____HasPresence(.init(
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ))
    }

    /**
    Query a user's presence. This must complete successfully before CopyPresence will have valid results. If HasPresence returns true for a remote
    user, this does not need to be called.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local, logged-in user making the request
    - Parameter TargetUserId: The Epic Online Services Account ID of the user whose presence data you want to retrieve; this value must be either the user making the request, or a friend of that user
    - Parameter CompletionDelegate: Pointer to a function that handles receiving the completion information
    */
    public func QueryPresence(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        CompletionDelegate: @escaping (SwiftEOS_Presence_QueryPresenceCallbackInfo) -> Void
    ) throws {
        try ____QueryPresence(
            .init(
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ),
            CompletionDelegate
        )
    }

    /**
    Sets your new presence with the data applied to a PresenceModificationHandle. The PresenceModificationHandle can be released safely after calling this function.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user's Epic Online Services Account ID
    - Parameter PresenceModificationHandle: The handle to the presence update
    - Parameter CompletionDelegate: Pointer to a function that handles receiving the completion information
    - SeeAlso: `EOS_Presence_CreatePresenceModification`
    - SeeAlso: `EOS_PresenceModification_Release`
    */
    public func SetPresence(
        LocalUserId: EOS_EpicAccountId?,
        PresenceModificationHandle: EOS_HPresenceModification?,
        CompletionDelegate: @escaping (SwiftEOS_Presence_SetPresenceCallbackInfo) -> Void
    ) throws {
        try ____SetPresence(
            .init(
                LocalUserId: LocalUserId,
                PresenceModificationHandle: PresenceModificationHandle
            ),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_Presence_Actor {

    /**
    Register to receive notifications when a user accepts a join game option via the social overlay.

    - Note: must call RemoveNotifyJoinGameAccepted to remove the notification
    - Parameter NotificationFn: A callback that is fired when a a notification is received.
    - Returns: handle representing the registered callback
    */
    private func ____AddNotifyJoinGameAccepted(
        _ NotificationFn: @escaping (SwiftEOS_Presence_JoinGameAcceptedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Presence_JoinGameAcceptedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectOptionalMutablePointerFromSwiftObject(SwiftEOS_Presence_AddNotifyJoinGameAcceptedOptions(), managedBy: pointerManager) { Options in
                        EOS_Presence_AddNotifyJoinGameAccepted(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Presence_JoinGameAcceptedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Presence_RemoveNotifyJoinGameAccepted(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
    Register to receive notifications when presence changes. If the returned NotificationId is valid, you must call RemoveNotifyOnPresenceChanged when you no longer wish to
    have your NotificationHandler called

    - Parameter NotificationHandler: The callback to be fired when a presence change occurs
    - Returns: Notification ID representing the registered callback if successful, an invalid NotificationId if not
    - SeeAlso: `EOS_INVALID_NOTIFICATIONID`
    - SeeAlso: `EOS_Presence_RemoveNotifyOnPresenceChanged`
    */
    private func ____AddNotifyOnPresenceChanged(
        _ NotificationHandler: @escaping (SwiftEOS_Presence_PresenceChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Presence_PresenceChangedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationHandler,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectOptionalMutablePointerFromSwiftObject(SwiftEOS_Presence_AddNotifyOnPresenceChangedOptions(), managedBy: pointerManager) { Options in
                        EOS_Presence_AddNotifyOnPresenceChanged(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Presence_PresenceChangedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Presence_RemoveNotifyOnPresenceChanged(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
    Get a user's cached presence object. If successful, this data must be released by calling `EOS_Presence_Info_Release`

    - Parameter Options: Object containing properties related to who is requesting presence and for what user
    - Throws: Success if we have cached data, or an error result if the request was invalid or we do not have cached data.
    - SeeAlso: `EOS_Presence_Info_Release`
    - Returns: A pointer to a pointer of Presence Info. If the returned result is success, this will be set to data that must be later released, otherwise this will be set to NULL
    */
    private func ____CopyPresence(
        _ Options: SwiftEOS_Presence_CopyPresenceOptions
    ) throws -> SwiftEOS_Presence_Info {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutPresence in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_Presence_CopyPresence(
                                    Handle,
                                    Options,
                                    OutPresence
                                ) } } },
                    release: EOS_Presence_Info_Release
                ) } }
    }

    /**
    Creates a presence modification handle. This handle can used to add multiple changes to your presence that can be applied with `EOS_Presence_SetPresence`.
    The resulting handle must be released by calling `EOS_PresenceModification_Release` once it has been passed to `EOS_Presence_SetPresence`.

    - Parameter Options: Object containing properties related to the user modifying their presence
    - Throws: Success if we successfully created the Presence Modification Handle pointed at in OutPresenceModificationHandle, or an error result if the input data was invalid
    - SeeAlso: `EOS_PresenceModification_Release`
    - SeeAlso: `EOS_Presence_SetPresence`
    - SeeAlso: `EOS_PresenceModification_SetStatus`
    - SeeAlso: `EOS_PresenceModification_SetRawRichText`
    - SeeAlso: `EOS_PresenceModification_SetData`
    - SeeAlso: `EOS_PresenceModification_DeleteData`
    - Returns: Pointer to a Presence Modification Handle to be set if successful
    */
    private func ____CreatePresenceModification(
        _ Options: SwiftEOS_Presence_CreatePresenceModificationOptions
    ) throws -> EOS_HPresenceModification {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withHandleReturned(managedBy: pointerManager) { OutPresenceModificationHandle in
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Presence_CreatePresenceModification(
                                Handle,
                                Options,
                                OutPresenceModificationHandle
                            ) } } } } }
    }

    /**
    Gets a join info custom game-data string for a specific user. This is a helper function for reading the presence data related to how a user can be joined.
    Its meaning is entirely application dependent.

    This value will be valid only after a QueryPresence call has successfully completed.

    - Parameter Options: Object containing an associated user
    - Throws: An `EOS_EResult` that indicates whether the location string was copied into the OutBuffer.
              `EOS_Success` if the information is available and passed out in OutBuffer
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if there is user or the location string was not found.
              `EOS_LimitExceeded` - The OutBuffer is not large enough to receive the location string. InOutBufferLength contains the required minimum length to perform the operation successfully.
    - SeeAlso: `EOS_PRESENCEMODIFICATION_JOININFO_MAX_LENGTH`
    - Returns: The buffer into which the character data should be written.  The buffer must be long enough to hold a string of `EOS_PRESENCEMODIFICATION_JOININFO_MAX_LENGTH`.
    */
    private func ____GetJoinInfo(
        _ Options: SwiftEOS_Presence_GetJoinInfoOptions
    ) throws -> String {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersReturnedAsString { OutBuffer, InOutBufferLength in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Presence_GetJoinInfo(
                            Handle,
                            Options,
                            OutBuffer,
                            InOutBufferLength
                        ) } } } }
    }

    /**
    Check if we already have presence for a user

    - Parameter Options: Object containing properties related to who is requesting presence and for what user
    - Returns: `EOS_TRUE` if we have presence for the requested user, or `EOS_FALSE` if the request was invalid or we do not have cached data
    */
    private func ____HasPresence(
        _ Options: SwiftEOS_Presence_HasPresenceOptions
    ) throws -> Bool {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Presence_HasPresence(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try swiftBoolFromEosBool($0) }
            ) }
    }

    /**
    Query a user's presence. This must complete successfully before CopyPresence will have valid results. If HasPresence returns true for a remote
    user, this does not need to be called.

    - Parameter Options: Object containing properties related to who is querying presence and for what user
    - Parameter CompletionDelegate: Pointer to a function that handles receiving the completion information
    */
    private func ____QueryPresence(
        _ Options: SwiftEOS_Presence_QueryPresenceOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Presence_QueryPresenceCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Presence_QueryPresence(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Presence_QueryPresenceCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Sets your new presence with the data applied to a PresenceModificationHandle. The PresenceModificationHandle can be released safely after calling this function.

    - Parameter Options: Object containing a PresenceModificationHandle and associated user data
    - Parameter CompletionDelegate: Pointer to a function that handles receiving the completion information
    - SeeAlso: `EOS_Presence_CreatePresenceModification`
    - SeeAlso: `EOS_PresenceModification_Release`
    */
    private func ____SetPresence(
        _ Options: SwiftEOS_Presence_SetPresenceOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Presence_SetPresenceCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Presence_SetPresence(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Presence_SetPresenceCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
