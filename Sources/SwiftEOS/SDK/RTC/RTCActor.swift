import Foundation
import EOSSDK
public class SwiftEOS_RTC_Actor: SwiftEOSActor {
    public let Handle: EOS_HRTC

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HRTC
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Register to receive notifications when disconnected from the room. If the returned NotificationId is valid, you must call
     * EOS_RTC_RemoveNotifyDisconnected when you no longer wish to have your CompletionDelegate called.
     * This function will always return EOS_INVALID_NOTIFICATIONID when used with lobby RTC room. To be notified of the connection
     * status of a Lobby-managed RTC room, use the EOS_Lobby_AddNotifyRTCRoomConnectionChanged function instead.
     * 
     * - Parameter CompletionDelegate:  The callback to be fired when a presence change occurs
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTC_RemoveNotifyDisconnected
     * - Parameter LocalUserId:  The Product User ID of the user trying to request this operation. 
     * - Parameter RoomName:  The room this event is registered on. 
     */
    public func AddNotifyDisconnected(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        CompletionDelegate: @escaping (SwiftEOS_RTC_DisconnectedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTC_DisconnectedCallbackInfo> {
        try ____AddNotifyDisconnected(
            .init(
                LocalUserId: LocalUserId,
                RoomName: RoomName
            ),
            CompletionDelegate
        )
    }

    /**
     * Register to receive notifications when a participant's status changes (e.g: join or leave the room). If the returned NotificationId is valid, you must call
     * EOS_RTC_RemoveNotifyParticipantStatusChanged when you no longer wish to have your CompletionDelegate called.
     * If you register to this notification before joining a room, you will receive a notification for every member already in the room when you join said room.
     * This allows you to know who is already in the room when you join.
     * To be used effectively with a Lobby-managed RTC room, this should be registered during the EOS_Lobby_CreateLobby or EOS_Lobby_JoinLobby completion
     * callbacks when the ResultCode is EOS_Success. If this notification is registered after that point, it is possible to miss notifications for
     * already-existing room participants.
     * 
     * - Parameter CompletionDelegate:  The callback to be fired when a presence change occurs
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @note This notification is also raised when the local user joins the room, but NOT when the local user leaves the room.
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTC_RemoveNotifyParticipantStatusChanged
     * - Parameter LocalUserId:  The Product User ID of the user trying to request this operation. 
     * - Parameter RoomName:  The room this event is registered on. 
     */
    public func AddNotifyParticipantStatusChanged(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        CompletionDelegate: @escaping (SwiftEOS_RTC_ParticipantStatusChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTC_ParticipantStatusChangedCallbackInfo> {
        try ____AddNotifyParticipantStatusChanged(
            .init(
                LocalUserId: LocalUserId,
                RoomName: RoomName
            ),
            CompletionDelegate
        )
    }

    /**
     * Use this function to block a participant already connected to the room. After blocking them no media will be sent or received between
     * that user and the local user. This method can be used after receiving the OnParticipantStatusChanged notification.
     * 
     * - Parameter LocalUserId:  Product User ID of the user trying to request this operation. 
     * - Parameter RoomName:  The room the users should be blocked on. 
     * - Parameter ParticipantId:  Product User ID of the participant to block 
     * - Parameter bBlocked:  Block or unblock the participant 
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * @return EOS_Success if the operation succeeded
     *         EOS_InvalidParameters if any of the parameters are incorrect
     *         EOS_NotFound if either the local user or specified participant are not in the specified room
     */
    public func BlockParticipant(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        ParticipantId: EOS_ProductUserId?,
        bBlocked: Bool,
        CompletionDelegate: @escaping (SwiftEOS_RTC_BlockParticipantCallbackInfo) -> Void
    ) throws {
        try ____BlockParticipant(
            .init(
                LocalUserId: LocalUserId,
                RoomName: RoomName,
                ParticipantId: ParticipantId,
                bBlocked: bBlocked
            ),
            CompletionDelegate
        )
    }

    /**
     * Get a handle to the Audio interface
     * 
     * @return EOS_HRTCAudio handle
     * 
     * @see eos_rtc_audio.h
     * @see eos_rtc_audio_types.h
     */
    public func GetAudioInterface() -> EOS_HRTCAudio {
        ____GetAudioInterface()
    }

    /**
     * Use this function to join a room.
     * This function does not need to called for the Lobby RTC Room system; doing so will return EOS_AccessDenied. The lobby system will
     * automatically join and leave RTC Rooms for all lobbies that have RTC rooms enabled.
     * 
     * - Parameter LocalUserId:  The product user id of the user trying to request this operation. 
     * - Parameter RoomName:  The room the user would like to join. 
     * - Parameter ClientBaseUrl:  The room the user would like to join. 
     * - Parameter ParticipantToken:  Authorization credential token to join the room. 
     * - Parameter ParticipantId:  The participant id used to join the room. If set to NULL the LocalUserId will be used instead. 
     * - Parameter Flags:  Join room flags, e.g. EOS_RTC_JOINROOMFLAGS_ENABLE_ECHO. This is a bitwise-or union of the defined flags. 
     * - Parameter bManualAudioInputEnabled:  Enable or disable Manual Audio Input. If manual audio input is enabled audio recording is not started and the audio
     * buffers must be passed manually using EOS_RTCAudio_SendAudio.
     * - Parameter bManualAudioOutputEnabled:  Enable or disable Manual Audio Output. If manual audio output is enabled audio rendering is not started and the audio
     * buffers must be received with EOS_RTCAudio_AddNotifyAudioBeforeRender and rendered manually.
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    public func JoinRoom(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        ClientBaseUrl: String?,
        ParticipantToken: String?,
        ParticipantId: EOS_ProductUserId?,
        Flags: Int,
        bManualAudioInputEnabled: Bool,
        bManualAudioOutputEnabled: Bool,
        CompletionDelegate: @escaping (SwiftEOS_RTC_JoinRoomCallbackInfo) -> Void
    ) throws {
        try ____JoinRoom(
            .init(
                LocalUserId: LocalUserId,
                RoomName: RoomName,
                ClientBaseUrl: ClientBaseUrl,
                ParticipantToken: ParticipantToken,
                ParticipantId: ParticipantId,
                Flags: Flags,
                bManualAudioInputEnabled: bManualAudioInputEnabled,
                bManualAudioOutputEnabled: bManualAudioOutputEnabled
            ),
            CompletionDelegate
        )
    }

    /**
     * Use this function to leave a room and clean up all the resources associated with it. This function has to always be called when the
     * room is abandoned even if the user is already disconnected for other reasons.
     * This function does not need to called for the Lobby RTC Room system; doing so will return EOS_AccessDenied. The lobby system will
     * automatically join and leave RTC Rooms for all lobbies that have RTC rooms enabled.
     * 
     * - Parameter LocalUserId:  Product User ID of the user requesting to leave the room 
     * - Parameter RoomName:  The room to leave. 
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * @return EOS_Success if the operation succeeded
     *         EOS_InvalidParameters if any of the parameters are incorrect
     *         EOS_NotFound if not in the specified room
     */
    public func LeaveRoom(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        CompletionDelegate: @escaping (SwiftEOS_RTC_LeaveRoomCallbackInfo) -> Void
    ) throws {
        try ____LeaveRoom(
            .init(
                LocalUserId: LocalUserId,
                RoomName: RoomName
            ),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_RTC_Actor {

    /**
     * Register to receive notifications when disconnected from the room. If the returned NotificationId is valid, you must call
     * EOS_RTC_RemoveNotifyDisconnected when you no longer wish to have your CompletionDelegate called.
     * This function will always return EOS_INVALID_NOTIFICATIONID when used with lobby RTC room. To be notified of the connection
     * status of a Lobby-managed RTC room, use the EOS_Lobby_AddNotifyRTCRoomConnectionChanged function instead.
     * 
     * - Parameter CompletionDelegate:  The callback to be fired when a presence change occurs
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTC_RemoveNotifyDisconnected
     */
    private func ____AddNotifyDisconnected(
        _ Options: SwiftEOS_RTC_AddNotifyDisconnectedOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTC_DisconnectedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTC_DisconnectedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: CompletionDelegate,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_RTC_AddNotifyDisconnected(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_RTC_DisconnectedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_RTC_RemoveNotifyDisconnected(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Register to receive notifications when a participant's status changes (e.g: join or leave the room). If the returned NotificationId is valid, you must call
     * EOS_RTC_RemoveNotifyParticipantStatusChanged when you no longer wish to have your CompletionDelegate called.
     * If you register to this notification before joining a room, you will receive a notification for every member already in the room when you join said room.
     * This allows you to know who is already in the room when you join.
     * To be used effectively with a Lobby-managed RTC room, this should be registered during the EOS_Lobby_CreateLobby or EOS_Lobby_JoinLobby completion
     * callbacks when the ResultCode is EOS_Success. If this notification is registered after that point, it is possible to miss notifications for
     * already-existing room participants.
     * 
     * - Parameter CompletionDelegate:  The callback to be fired when a presence change occurs
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @note This notification is also raised when the local user joins the room, but NOT when the local user leaves the room.
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTC_RemoveNotifyParticipantStatusChanged
     */
    private func ____AddNotifyParticipantStatusChanged(
        _ Options: SwiftEOS_RTC_AddNotifyParticipantStatusChangedOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTC_ParticipantStatusChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTC_ParticipantStatusChangedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: CompletionDelegate,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_RTC_AddNotifyParticipantStatusChanged(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_RTC_ParticipantStatusChangedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_RTC_RemoveNotifyParticipantStatusChanged(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Use this function to block a participant already connected to the room. After blocking them no media will be sent or received between
     * that user and the local user. This method can be used after receiving the OnParticipantStatusChanged notification.
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * @return EOS_Success if the operation succeeded
     *         EOS_InvalidParameters if any of the parameters are incorrect
     *         EOS_NotFound if either the local user or specified participant are not in the specified room
     */
    private func ____BlockParticipant(
        _ Options: SwiftEOS_RTC_BlockParticipantOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTC_BlockParticipantCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectMutablePointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_RTC_BlockParticipant(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_RTC_BlockParticipantCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Get a handle to the Audio interface
     * 
     * @return EOS_HRTCAudio handle
     * 
     * @see eos_rtc_audio.h
     * @see eos_rtc_audio_types.h
     */
    private func ____GetAudioInterface() -> EOS_HRTCAudio {
        withPointerManager { pointerManager in
            EOS_RTC_GetAudioInterface(Handle) }
    }

    /**
     * Use this function to join a room.
     * This function does not need to called for the Lobby RTC Room system; doing so will return EOS_AccessDenied. The lobby system will
     * automatically join and leave RTC Rooms for all lobbies that have RTC rooms enabled.
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    private func ____JoinRoom(
        _ Options: SwiftEOS_RTC_JoinRoomOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTC_JoinRoomCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_RTC_JoinRoom(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_RTC_JoinRoomCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Use this function to leave a room and clean up all the resources associated with it. This function has to always be called when the
     * room is abandoned even if the user is already disconnected for other reasons.
     * This function does not need to called for the Lobby RTC Room system; doing so will return EOS_AccessDenied. The lobby system will
     * automatically join and leave RTC Rooms for all lobbies that have RTC rooms enabled.
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * @return EOS_Success if the operation succeeded
     *         EOS_InvalidParameters if any of the parameters are incorrect
     *         EOS_NotFound if not in the specified room
     */
    private func ____LeaveRoom(
        _ Options: SwiftEOS_RTC_LeaveRoomOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTC_LeaveRoomCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_RTC_LeaveRoom(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_RTC_LeaveRoomCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
