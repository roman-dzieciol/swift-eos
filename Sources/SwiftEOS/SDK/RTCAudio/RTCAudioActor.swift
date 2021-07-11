import Foundation
import EOSSDK
public class SwiftEOS_RTCAudio_Actor: SwiftEOSActor {
    public let Handle: EOS_HRTCAudio

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HRTCAudio
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
    Register to receive notifications with remote audio buffers before they are rendered.

    This gives you access to the audio data received, allowing for example the implementation of custom filters/effects.

    If the returned NotificationId is valid, you must call `EOS_RTCAudio_RemoveNotifyAudioBeforeRender` when you no longer wish to
    have your CompletionDelegate called.

    - Parameter CompletionDelegate: The callback to be fired when a presence change occurs
    - Returns: Notification ID representing the registered callback if successful, an invalid NotificationId if not
    - SeeAlso: `EOS_INVALID_NOTIFICATIONID`
    - SeeAlso: `EOS_RTCAudio_RemoveNotifyAudioBeforeRender`
    - Parameter LocalUserId: The Product User ID of the user trying to request this operation.
    - Parameter RoomName: The  room this event is registered on.
    - Parameter bUnmixedAudio: Mixed audio or unmixed audio.
    For unmixed audio notifications it is not supported to modify the samples in the callback.
    */
    public func AddNotifyAudioBeforeRender(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        bUnmixedAudio: Bool,
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo> {
        try ____AddNotifyAudioBeforeRender(
            .init(
                LocalUserId: LocalUserId,
                RoomName: RoomName,
                bUnmixedAudio: bUnmixedAudio
            ),
            CompletionDelegate
        )
    }

    /**
    Register to receive notifications when local audio buffers are about to be encoded and sent.

    This gives you access to the audio data about to be sent, allowing for example the implementation of custom filters/effects.

    If the returned NotificationId is valid, you must call `EOS_RTCAudio_RemoveNotifyAudioBeforeSend` when you no longer wish to
    have your CompletionDelegate called.

    - Parameter CompletionDelegate: The callback to be fired when a presence change occurs
    - Returns: Notification ID representing the registered callback if successful, an invalid NotificationId if not
    - SeeAlso: `EOS_INVALID_NOTIFICATIONID`
    - SeeAlso: `EOS_RTCAudio_RemoveNotifyAudioBeforeSend`
    - Parameter LocalUserId: The Product User ID of the user trying to request this operation.
    - Parameter RoomName: The  room this event is registered on.
    */
    public func AddNotifyAudioBeforeSend(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioBeforeSendCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioBeforeSendCallbackInfo> {
        try ____AddNotifyAudioBeforeSend(
            .init(
                LocalUserId: LocalUserId,
                RoomName: RoomName
            ),
            CompletionDelegate
        )
    }

    /**
    Register to receive notifications when an audio device is added or removed to the system.

    If the returned NotificationId is valid, you must call `EOS_RTCAudio_RemoveNotifyAudioDevicesChanged` when you no longer wish
    to have your CompletionDelegate called.

    - Parameter CompletionDelegate: The callback to be fired when an audio device change occurs
    - Returns: Notification ID representing the registered callback if successful, an invalid NotificationId if not
    - SeeAlso: `EOS_INVALID_NOTIFICATIONID`
    - SeeAlso: `EOS_RTCAudio_RemoveNotifyAudioDevicesChanged`
    */
    public func AddNotifyAudioDevicesChanged(
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioDevicesChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioDevicesChangedCallbackInfo> {
        try ____AddNotifyAudioDevicesChanged(CompletionDelegate)
    }

    /**
    Register to receive notifications when audio input state changed.

    If the returned NotificationId is valid, you must call `EOS_RTCAudio_RemoveNotifyAudioInputState` when you no longer wish to
    have your CompletionDelegate called.

    - Parameter CompletionDelegate: The callback to be fired when audio input state changes
    - Returns: Notification ID representing the registered callback if successful, an invalid NotificationId if not
    - SeeAlso: `EOS_INVALID_NOTIFICATIONID`
    - SeeAlso: `EOS_RTCAudio_RemoveNotifyAudioInputState`
    - Parameter LocalUserId: The Product User ID of the user trying to request this operation.
    - Parameter RoomName: The room this event is registered on.
    */
    public func AddNotifyAudioInputState(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioInputStateCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioInputStateCallbackInfo> {
        try ____AddNotifyAudioInputState(
            .init(
                LocalUserId: LocalUserId,
                RoomName: RoomName
            ),
            CompletionDelegate
        )
    }

    /**
    Register to receive notifications when audio output state changed.

    If the returned NotificationId is valid, you must call `EOS_RTCAudio_RemoveNotifyAudioOutputState` when you no longer wish to
    have your CompletionDelegate called.

    - Parameter CompletionDelegate: The callback to be fired when audio output state changes
    - Returns: Notification ID representing the registered callback if successful, an invalid NotificationId if not
    - SeeAlso: `EOS_INVALID_NOTIFICATIONID`
    - SeeAlso: `EOS_RTCAudio_RemoveNotifyAudioOutputState`
    - Parameter LocalUserId: The Product User ID of the user trying to request this operation.
    - Parameter RoomName: The  room this event is registered on.
    */
    public func AddNotifyAudioOutputState(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioOutputStateCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioOutputStateCallbackInfo> {
        try ____AddNotifyAudioOutputState(
            .init(
                LocalUserId: LocalUserId,
                RoomName: RoomName
            ),
            CompletionDelegate
        )
    }

    /**
    Register to receive notifications when a room participant audio status is updated (f.e when speaking flag changes).

    If the returned NotificationId is valid, you must call `EOS_RTCAudio_RemoveNotifyParticipantUpdated` when you no longer wish
    to have your CompletionDelegate called.

    - Parameter CompletionDelegate: The callback to be fired when a presence change occurs
    - Returns: Notification ID representing the registered callback if successful, an invalid NotificationId if not
    - SeeAlso: `EOS_INVALID_NOTIFICATIONID`
    - SeeAlso: `EOS_RTCAudio_RemoveNotifyParticipantUpdated`
    - Parameter LocalUserId: The Product User ID of the user trying to request this operation.
    - Parameter RoomName: The  room this event is registered on.
    */
    public func AddNotifyParticipantUpdated(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo> {
        try ____AddNotifyParticipantUpdated(
            .init(
                LocalUserId: LocalUserId,
                RoomName: RoomName
            ),
            CompletionDelegate
        )
    }

    /**
    Fetches an audio input device's info from then given index. The returned value should not be cached and important
    information should be copied off of the result object immediately.

    - Parameter DeviceInfoIndex: Index of the device info to retrieve.
    - Returns: A pointer to the device information, or NULL on error. You should NOT keep hold of this pointer.
    - SeeAlso: `EOS_RTCAudio_GetAudioInputDevicesCount`
    - SeeAlso: `EOS_RTCAudio_AddNotifyAudioDevicesChanged`
    */
    public func GetAudioInputDeviceByIndex(
        DeviceInfoIndex: Int
    ) throws -> SwiftEOS_RTCAudio_AudioInputDeviceInfo? {
        try ____GetAudioInputDeviceByIndex(.init(DeviceInfoIndex: DeviceInfoIndex))
    }

    /**
    Returns the number of audio input devices available in the system.

    The returned value should not be cached and should instead be used immediately with the `EOS_RTCAudio_GetAudioInputDeviceByIndex`
    function.

    - Returns: The number of audio input devices
    - SeeAlso: `EOS_RTCAudio_GetAudioInputDeviceByIndex`
    - SeeAlso: `EOS_RTCAudio_AddNotifyAudioDevicesChanged`
    */
    public func GetAudioInputDevicesCount() throws -> Int {
        try ____GetAudioInputDevicesCount()
    }

    /**
    Fetches an audio output device's info from then given index.

    The returned value should not be cached and important information should be copied off of the result object immediately.

    - Parameter DeviceInfoIndex: Index of the device info to retrieve.
    - Returns: A pointer to the device information, or NULL on error. You should NOT keep hold of this pointer.
    - SeeAlso: `EOS_RTCAudio_GetAudioOutputDevicesCount`
    - SeeAlso: `EOS_RTCAudio_AddNotifyAudioDevicesChanged`
    */
    public func GetAudioOutputDeviceByIndex(
        DeviceInfoIndex: Int
    ) throws -> SwiftEOS_RTCAudio_AudioOutputDeviceInfo? {
        try ____GetAudioOutputDeviceByIndex(.init(DeviceInfoIndex: DeviceInfoIndex))
    }

    /**
    Returns the number of audio output devices available in the system.

    The returned value should not be cached and should instead be used immediately with the `EOS_RTCAudio_GetAudioOutputDeviceByIndex`
    function.

    - Returns: The number of audio output devices
    - SeeAlso: `EOS_RTCAudio_GetAudioOutputDeviceByIndex`
    - SeeAlso: `EOS_RTCAudio_AddNotifyAudioDevicesChanged`
    */
    public func GetAudioOutputDevicesCount() throws -> Int {
        try ____GetAudioOutputDevicesCount()
    }

    /**
    Use this function to inform the audio system of a user.

    This function is only necessary for some platforms.

    - Parameter UserId: Platform dependent user id.
    - Throws: EOS_UnexpectedError` otherwise.
    */
    public func RegisterPlatformAudioUser(
        UserId: String?
    ) throws {
        try ____RegisterPlatformAudioUser(.init(UserId: UserId))
    }

    /**
    Use this function to push a new audio buffer to be sent to the participants of a room.

    This should only be used if Manual Audio Input was enabled locally for the specified room.

    - Parameter LocalUserId: The Product User ID of the user trying to request this operation.
    - Parameter RoomName: The  room this event is registered on.
    - Parameter Buffer: Audio buffer, which must have a duration of 10 ms.
    - Note: The SDK makes a copy of buffer. There is no need to keep the buffer around after calling `EOS_RTCAudio_SendAudio`
    - Throws: `EOS_InvalidParameters` if any of the parameters are incorrect
              `EOS_NotFound` if the specified room was not found
              `EOS_InvalidState` if manual recording was not enabled when joining the room.
    - SeeAlso: `EOS_RTC_JoinRoomOptions`
    - SeeAlso: `EOS_Lobby_LocalRTCOptions`
    */
    public func SendAudio(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        Buffer: SwiftEOS_RTCAudio_AudioBuffer?
    ) throws {
        try ____SendAudio(.init(
                LocalUserId: LocalUserId,
                RoomName: RoomName,
                Buffer: Buffer
            ))
    }

    /**
    Use this function to set audio input settings, such as the active input device, volume, or platform AEC.

    - Parameter LocalUserId: The Product User ID of the user trying to request this operation.
    - Parameter DeviceId: The device Id to be used for this user. Pass NULL or empty string to use default input device.
    - Parameter Volume: The volume to be configured for this device (range 0.0 to 100.0).
    At the moment, the only value that produce any effect is 0.0 (silence). Any other value is ignored and causes no change to the volume.
    - Parameter bPlatformAEC: Enable or disable Platform AEC (Acoustic Echo Cancellation) if available.
    - Throws: `EOS_InvalidParameters` if any of the parameters are incorrect
    */
    public func SetAudioInputSettings(
        LocalUserId: EOS_ProductUserId?,
        DeviceId: String?,
        Volume: Float,
        bPlatformAEC: Bool
    ) throws {
        try ____SetAudioInputSettings(.init(
                LocalUserId: LocalUserId,
                DeviceId: DeviceId,
                Volume: Volume,
                bPlatformAEC: bPlatformAEC
            ))
    }

    /**
    Use this function to set audio output settings, such as the active output device or volume.

    - Parameter LocalUserId: The Product User ID of the user who initiated this request.
    - Parameter DeviceId: The device Id to be used for this user. Pass NULL or empty string to use default output device.
    - Parameter Volume: The volume to be configured for this device (range 0.0 to 100.0). Volume 50 means that the audio volume is not modified
    and stays in its source value.
    - Throws: `EOS_InvalidParameters` if any of the parameters are incorrect
    */
    public func SetAudioOutputSettings(
        LocalUserId: EOS_ProductUserId?,
        DeviceId: String?,
        Volume: Float
    ) throws {
        try ____SetAudioOutputSettings(.init(
                LocalUserId: LocalUserId,
                DeviceId: DeviceId,
                Volume: Volume
            ))
    }

    /**
    Use this function to remove a user that was added with `EOS_RTCAudio_RegisterPlatformAudioUser`.

    - Parameter UserId: The account of a user associated with this event.
    - Throws: EOS_UnexpectedError` otherwise.
    */
    public func UnregisterPlatformAudioUser(
        UserId: String?
    ) throws {
        try ____UnregisterPlatformAudioUser(.init(UserId: UserId))
    }

    /**
    Use this function to tweak incoming audio options per room.

    - Note: Due to internal implementation details, this function requires that you first register to any notification for room
    - Parameter LocalUserId: The Product User ID of the user trying to request this operation.
    - Parameter RoomName: The room this settings should be applied on.
    - Parameter ParticipantId: The participant to modify or null to update the global configuration
    - Parameter bAudioEnabled: Mute or unmute audio track
    - Parameter CompletionDelegate: The callback to be fired when the operation completes, either successfully or in error
    - Returns: `EOS_Success` if the operation succeeded
               `EOS_InvalidParameters` if any of the parameters are incorrect
               `EOS_NotFound` if either the local user or specified participant are not in the room
    */
    public func UpdateReceiving(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        ParticipantId: EOS_ProductUserId?,
        bAudioEnabled: Bool,
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_UpdateReceivingCallbackInfo) -> Void
    ) throws {
        try ____UpdateReceiving(
            .init(
                LocalUserId: LocalUserId,
                RoomName: RoomName,
                ParticipantId: ParticipantId,
                bAudioEnabled: bAudioEnabled
            ),
            CompletionDelegate
        )
    }

    /**
    Use this function to tweak outgoing audio options per room.

    - Note: Due to internal implementation details, this function requires that you first register to any notification for room
    - Parameter LocalUserId: The Product User ID of the user trying to request this operation.
    - Parameter RoomName: The room this settings should be applied on.
    - Parameter AudioStatus: Muted or unmuted audio track status
    - Parameter CompletionDelegate: The callback to be fired when the operation completes, either successfully or in error
    - Returns: `EOS_Success` if the operation succeeded
               `EOS_InvalidParameters` if any of the parameters are incorrect
               `EOS_NotFound` if the local user is not in the room
    */
    public func UpdateSending(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        AudioStatus: EOS_ERTCAudioStatus,
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_UpdateSendingCallbackInfo) -> Void
    ) throws {
        try ____UpdateSending(
            .init(
                LocalUserId: LocalUserId,
                RoomName: RoomName,
                AudioStatus: AudioStatus
            ),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_RTCAudio_Actor {

    /**
    Register to receive notifications with remote audio buffers before they are rendered.

    This gives you access to the audio data received, allowing for example the implementation of custom filters/effects.

    If the returned NotificationId is valid, you must call `EOS_RTCAudio_RemoveNotifyAudioBeforeRender` when you no longer wish to
    have your CompletionDelegate called.

    - Parameter CompletionDelegate: The callback to be fired when a presence change occurs
    - Returns: Notification ID representing the registered callback if successful, an invalid NotificationId if not
    - SeeAlso: `EOS_INVALID_NOTIFICATIONID`
    - SeeAlso: `EOS_RTCAudio_RemoveNotifyAudioBeforeRender`
    */
    private func ____AddNotifyAudioBeforeRender(
        _ Options: SwiftEOS_RTCAudio_AddNotifyAudioBeforeRenderOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: CompletionDelegate,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_RTCAudio_AddNotifyAudioBeforeRender(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_RTCAudio_RemoveNotifyAudioBeforeRender(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
    Register to receive notifications when local audio buffers are about to be encoded and sent.

    This gives you access to the audio data about to be sent, allowing for example the implementation of custom filters/effects.

    If the returned NotificationId is valid, you must call `EOS_RTCAudio_RemoveNotifyAudioBeforeSend` when you no longer wish to
    have your CompletionDelegate called.

    - Parameter CompletionDelegate: The callback to be fired when a presence change occurs
    - Returns: Notification ID representing the registered callback if successful, an invalid NotificationId if not
    - SeeAlso: `EOS_INVALID_NOTIFICATIONID`
    - SeeAlso: `EOS_RTCAudio_RemoveNotifyAudioBeforeSend`
    */
    private func ____AddNotifyAudioBeforeSend(
        _ Options: SwiftEOS_RTCAudio_AddNotifyAudioBeforeSendOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioBeforeSendCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioBeforeSendCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: CompletionDelegate,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_RTCAudio_AddNotifyAudioBeforeSend(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_RTCAudio_AudioBeforeSendCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_RTCAudio_RemoveNotifyAudioBeforeSend(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
    Register to receive notifications when an audio device is added or removed to the system.

    If the returned NotificationId is valid, you must call `EOS_RTCAudio_RemoveNotifyAudioDevicesChanged` when you no longer wish
    to have your CompletionDelegate called.

    - Parameter CompletionDelegate: The callback to be fired when an audio device change occurs
    - Returns: Notification ID representing the registered callback if successful, an invalid NotificationId if not
    - SeeAlso: `EOS_INVALID_NOTIFICATIONID`
    - SeeAlso: `EOS_RTCAudio_RemoveNotifyAudioDevicesChanged`
    */
    private func ____AddNotifyAudioDevicesChanged(
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioDevicesChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioDevicesChangedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: CompletionDelegate,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_RTCAudio_AddNotifyAudioDevicesChangedOptions(), managedBy: pointerManager) { Options in
                        EOS_RTCAudio_AddNotifyAudioDevicesChanged(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_RTCAudio_AudioDevicesChangedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_RTCAudio_RemoveNotifyAudioDevicesChanged(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
    Register to receive notifications when audio input state changed.

    If the returned NotificationId is valid, you must call `EOS_RTCAudio_RemoveNotifyAudioInputState` when you no longer wish to
    have your CompletionDelegate called.

    - Parameter CompletionDelegate: The callback to be fired when audio input state changes
    - Returns: Notification ID representing the registered callback if successful, an invalid NotificationId if not
    - SeeAlso: `EOS_INVALID_NOTIFICATIONID`
    - SeeAlso: `EOS_RTCAudio_RemoveNotifyAudioInputState`
    */
    private func ____AddNotifyAudioInputState(
        _ Options: SwiftEOS_RTCAudio_AddNotifyAudioInputStateOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioInputStateCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioInputStateCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: CompletionDelegate,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_RTCAudio_AddNotifyAudioInputState(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_RTCAudio_AudioInputStateCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_RTCAudio_RemoveNotifyAudioInputState(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
    Register to receive notifications when audio output state changed.

    If the returned NotificationId is valid, you must call `EOS_RTCAudio_RemoveNotifyAudioOutputState` when you no longer wish to
    have your CompletionDelegate called.

    - Parameter CompletionDelegate: The callback to be fired when audio output state changes
    - Returns: Notification ID representing the registered callback if successful, an invalid NotificationId if not
    - SeeAlso: `EOS_INVALID_NOTIFICATIONID`
    - SeeAlso: `EOS_RTCAudio_RemoveNotifyAudioOutputState`
    */
    private func ____AddNotifyAudioOutputState(
        _ Options: SwiftEOS_RTCAudio_AddNotifyAudioOutputStateOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioOutputStateCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioOutputStateCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: CompletionDelegate,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_RTCAudio_AddNotifyAudioOutputState(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_RTCAudio_AudioOutputStateCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_RTCAudio_RemoveNotifyAudioOutputState(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
    Register to receive notifications when a room participant audio status is updated (f.e when speaking flag changes).

    If the returned NotificationId is valid, you must call `EOS_RTCAudio_RemoveNotifyParticipantUpdated` when you no longer wish
    to have your CompletionDelegate called.

    - Parameter CompletionDelegate: The callback to be fired when a presence change occurs
    - Returns: Notification ID representing the registered callback if successful, an invalid NotificationId if not
    - SeeAlso: `EOS_INVALID_NOTIFICATIONID`
    - SeeAlso: `EOS_RTCAudio_RemoveNotifyParticipantUpdated`
    */
    private func ____AddNotifyParticipantUpdated(
        _ Options: SwiftEOS_RTCAudio_AddNotifyParticipantUpdatedOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: CompletionDelegate,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_RTCAudio_AddNotifyParticipantUpdated(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_RTCAudio_RemoveNotifyParticipantUpdated(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
    Fetches an audio input device's info from then given index. The returned value should not be cached and important
    information should be copied off of the result object immediately.

    - Parameter Options: structure containing the index being accessed
    - Returns: A pointer to the device information, or NULL on error. You should NOT keep hold of this pointer.
    - SeeAlso: `EOS_RTCAudio_GetAudioInputDevicesCount`
    - SeeAlso: `EOS_RTCAudio_AddNotifyAudioDevicesChanged`
    */
    private func ____GetAudioInputDeviceByIndex(
        _ Options: SwiftEOS_RTCAudio_GetAudioInputDeviceByIndexOptions
    ) throws -> SwiftEOS_RTCAudio_AudioInputDeviceInfo? {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_RTCAudio_GetAudioInputDeviceByIndex(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try SwiftEOS_RTCAudio_AudioInputDeviceInfo.init(sdkObject: $0?.pointee) }
            ) }
    }

    /**
    Returns the number of audio input devices available in the system.

    The returned value should not be cached and should instead be used immediately with the `EOS_RTCAudio_GetAudioInputDeviceByIndex`
    function.

    - Returns: The number of audio input devices
    - SeeAlso: `EOS_RTCAudio_GetAudioInputDeviceByIndex`
    - SeeAlso: `EOS_RTCAudio_AddNotifyAudioDevicesChanged`
    */
    private func ____GetAudioInputDevicesCount() throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_RTCAudio_GetAudioInputDevicesCountOptions(), managedBy: pointerManager) { Options in
                        EOS_RTCAudio_GetAudioInputDevicesCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Fetches an audio output device's info from then given index.

    The returned value should not be cached and important information should be copied off of the result object immediately.

    - Parameter Options: structure containing the index being accessed
    - Returns: A pointer to the device information, or NULL on error. You should NOT keep hold of this pointer.
    - SeeAlso: `EOS_RTCAudio_GetAudioOutputDevicesCount`
    - SeeAlso: `EOS_RTCAudio_AddNotifyAudioDevicesChanged`
    */
    private func ____GetAudioOutputDeviceByIndex(
        _ Options: SwiftEOS_RTCAudio_GetAudioOutputDeviceByIndexOptions
    ) throws -> SwiftEOS_RTCAudio_AudioOutputDeviceInfo? {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_RTCAudio_GetAudioOutputDeviceByIndex(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try SwiftEOS_RTCAudio_AudioOutputDeviceInfo.init(sdkObject: $0?.pointee) }
            ) }
    }

    /**
    Returns the number of audio output devices available in the system.

    The returned value should not be cached and should instead be used immediately with the `EOS_RTCAudio_GetAudioOutputDeviceByIndex`
    function.

    - Returns: The number of audio output devices
    - SeeAlso: `EOS_RTCAudio_GetAudioOutputDeviceByIndex`
    - SeeAlso: `EOS_RTCAudio_AddNotifyAudioDevicesChanged`
    */
    private func ____GetAudioOutputDevicesCount() throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_RTCAudio_GetAudioOutputDevicesCountOptions(), managedBy: pointerManager) { Options in
                        EOS_RTCAudio_GetAudioOutputDevicesCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Use this function to inform the audio system of a user.

    This function is only necessary for some platforms.

    - Parameter Options: structure containing the parameters for the operation.
    - Throws: EOS_UnexpectedError` otherwise.
    */
    private func ____RegisterPlatformAudioUser(
        _ Options: SwiftEOS_RTCAudio_RegisterPlatformAudioUserOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_RTCAudio_RegisterPlatformAudioUser(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Use this function to push a new audio buffer to be sent to the participants of a room.

    This should only be used if Manual Audio Input was enabled locally for the specified room.

    - Parameter Options: structure containing the parameters for the operation.
    - Throws: `EOS_InvalidParameters` if any of the parameters are incorrect
              `EOS_NotFound` if the specified room was not found
              `EOS_InvalidState` if manual recording was not enabled when joining the room.
    - SeeAlso: `EOS_RTC_JoinRoomOptions`
    - SeeAlso: `EOS_Lobby_LocalRTCOptions`
    */
    private func ____SendAudio(
        _ Options: SwiftEOS_RTCAudio_SendAudioOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_RTCAudio_SendAudio(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Use this function to set audio input settings, such as the active input device, volume, or platform AEC.

    - Parameter Options: structure containing the parameters for the operation.
    - Throws: `EOS_InvalidParameters` if any of the parameters are incorrect
    */
    private func ____SetAudioInputSettings(
        _ Options: SwiftEOS_RTCAudio_SetAudioInputSettingsOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_RTCAudio_SetAudioInputSettings(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Use this function to set audio output settings, such as the active output device or volume.

    - Parameter Options: structure containing the parameters for the operation.
    - Throws: `EOS_InvalidParameters` if any of the parameters are incorrect
    */
    private func ____SetAudioOutputSettings(
        _ Options: SwiftEOS_RTCAudio_SetAudioOutputSettingsOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_RTCAudio_SetAudioOutputSettings(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Use this function to remove a user that was added with `EOS_RTCAudio_RegisterPlatformAudioUser`.

    - Parameter Options: structure containing the parameters for the operation.
    - Throws: EOS_UnexpectedError` otherwise.
    */
    private func ____UnregisterPlatformAudioUser(
        _ Options: SwiftEOS_RTCAudio_UnregisterPlatformAudioUserOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_RTCAudio_UnregisterPlatformAudioUser(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Use this function to tweak incoming audio options per room.

    - Note: Due to internal implementation details, this function requires that you first register to any notification for room
    - Parameter Options: structure containing the parameters for the operation.
    - Parameter CompletionDelegate: The callback to be fired when the operation completes, either successfully or in error
    - Returns: `EOS_Success` if the operation succeeded
               `EOS_InvalidParameters` if any of the parameters are incorrect
               `EOS_NotFound` if either the local user or specified participant are not in the room
    */
    private func ____UpdateReceiving(
        _ Options: SwiftEOS_RTCAudio_UpdateReceivingOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAudio_UpdateReceivingCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_RTCAudio_UpdateReceiving(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_RTCAudio_UpdateReceivingCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Use this function to tweak outgoing audio options per room.

    - Note: Due to internal implementation details, this function requires that you first register to any notification for room
    - Parameter Options: structure containing the parameters for the operation.
    - Parameter CompletionDelegate: The callback to be fired when the operation completes, either successfully or in error
    - Returns: `EOS_Success` if the operation succeeded
               `EOS_InvalidParameters` if any of the parameters are incorrect
               `EOS_NotFound` if the local user is not in the room
    */
    private func ____UpdateSending(
        _ Options: SwiftEOS_RTCAudio_UpdateSendingOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAudio_UpdateSendingCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_RTCAudio_UpdateSending(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_RTCAudio_UpdateSendingCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
