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
     * Register to receive notifications with remote audio buffers before they are rendered.
     * This gives you access to the audio data received, allowing for example the implementation of custom filters/effects.
     * If the returned NotificationId is valid, you must call EOS_RTCAudio_RemoveNotifyAudioBeforeRender when you no longer wish to
     * have your CompletionDelegate called.
     * 
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when a presence change occurs
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTCAudio_RemoveNotifyAudioBeforeRender
     */
    public func AddNotifyAudioBeforeRender(
        Options: inout SwiftEOS_RTCAudio_AddNotifyAudioBeforeRenderOptions?,
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo> {
        try ____AddNotifyAudioBeforeRender(
            &Options,
            CompletionDelegate
        )
    }

    /**
     * Register to receive notifications when local audio buffers are about to be encoded and sent.
     * This gives you access to the audio data about to be sent, allowing for example the implementation of custom filters/effects.
     * If the returned NotificationId is valid, you must call EOS_RTCAudio_RemoveNotifyAudioBeforeSend when you no longer wish to
     * have your CompletionDelegate called.
     * 
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when a presence change occurs
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTCAudio_RemoveNotifyAudioBeforeSend
     */
    public func AddNotifyAudioBeforeSend(
        Options: inout SwiftEOS_RTCAudio_AddNotifyAudioBeforeSendOptions?,
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioBeforeSendCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioBeforeSendCallbackInfo> {
        try ____AddNotifyAudioBeforeSend(
            &Options,
            CompletionDelegate
        )
    }

    /**
     * Register to receive notifications when an audio device is added or removed to the system.
     * If the returned NotificationId is valid, you must call EOS_RTCAudio_RemoveNotifyAudioDevicesChanged when you no longer wish
     * to have your CompletionDelegate called.
     * 
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when an audio device change occurs
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTCAudio_RemoveNotifyAudioDevicesChanged
     */
    public func AddNotifyAudioDevicesChanged(
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioDevicesChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioDevicesChangedCallbackInfo> {
        try ____AddNotifyAudioDevicesChanged(CompletionDelegate)
    }

    /**
     * Register to receive notifications when audio input state changed.
     * If the returned NotificationId is valid, you must call EOS_RTCAudio_RemoveNotifyAudioInputState when you no longer wish to
     * have your CompletionDelegate called.
     * 
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when audio input state changes
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTCAudio_RemoveNotifyAudioInputState
     */
    public func AddNotifyAudioInputState(
        Options: inout SwiftEOS_RTCAudio_AddNotifyAudioInputStateOptions?,
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioInputStateCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioInputStateCallbackInfo> {
        try ____AddNotifyAudioInputState(
            &Options,
            CompletionDelegate
        )
    }

    /**
     * Register to receive notifications when audio output state changed.
     * If the returned NotificationId is valid, you must call EOS_RTCAudio_RemoveNotifyAudioOutputState when you no longer wish to
     * have your CompletionDelegate called.
     * 
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when audio output state changes
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTCAudio_RemoveNotifyAudioOutputState
     */
    public func AddNotifyAudioOutputState(
        Options: inout SwiftEOS_RTCAudio_AddNotifyAudioOutputStateOptions?,
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioOutputStateCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioOutputStateCallbackInfo> {
        try ____AddNotifyAudioOutputState(
            &Options,
            CompletionDelegate
        )
    }

    /**
     * Register to receive notifications when a room participant audio status is updated (f.e when speaking flag changes).
     * If the returned NotificationId is valid, you must call EOS_RTCAudio_RemoveNotifyParticipantUpdated when you no longer wish
     * to have your CompletionDelegate called.
     * 
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when a presence change occurs
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTCAudio_RemoveNotifyParticipantUpdated
     */
    public func AddNotifyParticipantUpdated(
        Options: inout SwiftEOS_RTCAudio_AddNotifyParticipantUpdatedOptions?,
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo> {
        try ____AddNotifyParticipantUpdated(
            &Options,
            CompletionDelegate
        )
    }

    /**
     * Fetches an audio input device's info from then given index. The returned value should not be cached and important
     * information should be copied off of the result object immediately.
     * 
     * - Parameter Options:  structure containing the index being accessed
     * @return A pointer to the device information, or NULL on error. You should NOT keep hold of this pointer.
     * @see EOS_RTCAudio_GetAudioInputDevicesCount
     * @see EOS_RTCAudio_AddNotifyAudioDevicesChanged
     */
    public func GetAudioInputDeviceByIndex(
        Options: SwiftEOS_RTCAudio_GetAudioInputDeviceByIndexOptions
    ) throws -> SwiftEOS_RTCAudio_AudioInputDeviceInfo? {
        try ____GetAudioInputDeviceByIndex(Options)
    }

    /**
     * Returns the number of audio input devices available in the system.
     * The returned value should not be cached and should instead be used immediately with the EOS_RTCAudio_GetAudioInputDeviceByIndex
     * function.
     * 
     * - Parameter Options:  structure containing the parameters for the operation
     * @return The number of audio input devices
     * @see EOS_RTCAudio_GetAudioInputDeviceByIndex
     * @see EOS_RTCAudio_AddNotifyAudioDevicesChanged
     */
    public func GetAudioInputDevicesCount() throws -> Int {
        try ____GetAudioInputDevicesCount()
    }

    /**
     * Fetches an audio output device's info from then given index.
     * The returned value should not be cached and important information should be copied off of the result object immediately.
     * 
     * - Parameter Options:  structure containing the index being accessed
     * @return A pointer to the device information, or NULL on error. You should NOT keep hold of this pointer.
     * @see EOS_RTCAudio_GetAudioOutputDevicesCount
     * @see EOS_RTCAudio_AddNotifyAudioDevicesChanged
     */
    public func GetAudioOutputDeviceByIndex(
        Options: SwiftEOS_RTCAudio_GetAudioOutputDeviceByIndexOptions
    ) throws -> SwiftEOS_RTCAudio_AudioOutputDeviceInfo? {
        try ____GetAudioOutputDeviceByIndex(Options)
    }

    /**
     * Returns the number of audio output devices available in the system.
     * The returned value should not be cached and should instead be used immediately with the EOS_RTCAudio_GetAudioOutputDeviceByIndex
     * function.
     * 
     * - Parameter Options:  structure containing the parameters for the operation
     * @return The number of audio output devices
     * @see EOS_RTCAudio_GetAudioOutputDeviceByIndex
     * @see EOS_RTCAudio_AddNotifyAudioDevicesChanged
     */
    public func GetAudioOutputDevicesCount() throws -> Int {
        try ____GetAudioOutputDevicesCount()
    }

    /**
     * Use this function to inform the audio system of a user.
     * This function is only necessary for some platforms.
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * @return EOS_Success if the user was successfully registered, EOS_UnexpectedError otherwise.
     */
    public func RegisterPlatformAudioUser(
        Options: SwiftEOS_RTCAudio_RegisterPlatformAudioUserOptions
    ) throws {
        try ____RegisterPlatformAudioUser(Options)
    }

    /**
     * Use this function to push a new audio buffer to be sent to the participants of a room.
     * This should only be used if Manual Audio Input was enabled locally for the specified room.
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * @return EOS_Success if the buffer was successfully queued for sending
     *         EOS_InvalidParameters if any of the parameters are incorrect
     *         EOS_NotFound if the specified room was not found
     *         EOS_InvalidState if manual recording was not enabled when joining the room.
     * @see EOS_RTC_JoinRoomOptions
     * @see EOS_Lobby_LocalRTCOptions
     */
    public func SendAudio(
        Options: SwiftEOS_RTCAudio_SendAudioOptions
    ) throws {
        try ____SendAudio(Options)
    }

    /**
     * Use this function to set audio input settings, such as the active input device, volume, or platform AEC.
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * @return EOS_Success if the setting was successful
     *         EOS_InvalidParameters if any of the parameters are incorrect
     */
    public func SetAudioInputSettings(
        Options: SwiftEOS_RTCAudio_SetAudioInputSettingsOptions
    ) throws {
        try ____SetAudioInputSettings(Options)
    }

    /**
     * Use this function to set audio output settings, such as the active output device or volume.
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * @return EOS_Success if the setting was successful
     *         EOS_InvalidParameters if any of the parameters are incorrect
     */
    public func SetAudioOutputSettings(
        Options: SwiftEOS_RTCAudio_SetAudioOutputSettingsOptions
    ) throws {
        try ____SetAudioOutputSettings(Options)
    }

    /**
     * Use this function to remove a user that was added with EOS_RTCAudio_RegisterPlatformAudioUser.
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * @return EOS_Success if the user was successfully unregistered, EOS_UnexpectedError otherwise.
     */
    public func UnregisterPlatformAudioUser(
        Options: SwiftEOS_RTCAudio_UnregisterPlatformAudioUserOptions
    ) throws {
        try ____UnregisterPlatformAudioUser(Options)
    }

    /**
     * Use this function to tweak incoming audio options per room.
     * 
     * @note Due to internal implementation details, this function requires that you first register to any notification for room
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when the operation completes, either successfully or in error
     * @return EOS_Success if the operation succeeded
     *         EOS_InvalidParameters if any of the parameters are incorrect
     *         EOS_NotFound if either the local user or specified participant are not in the room
     */
    public func UpdateReceiving(
        Options: SwiftEOS_RTCAudio_UpdateReceivingOptions,
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_UpdateReceivingCallbackInfo) -> Void
    ) throws {
        try ____UpdateReceiving(
            Options,
            CompletionDelegate
        )
    }

    /**
     * Use this function to tweak outgoing audio options per room.
     * 
     * @note Due to internal implementation details, this function requires that you first register to any notification for room
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when the operation completes, either successfully or in error
     * @return EOS_Success if the operation succeeded
     *         EOS_InvalidParameters if any of the parameters are incorrect
     *         EOS_NotFound if the local user is not in the room
     */
    public func UpdateSending(
        Options: SwiftEOS_RTCAudio_UpdateSendingOptions,
        CompletionDelegate: @escaping (SwiftEOS_RTCAudio_UpdateSendingCallbackInfo) -> Void
    ) throws {
        try ____UpdateSending(
            Options,
            CompletionDelegate
        )
    }
}

extension SwiftEOS_RTCAudio_Actor {

    /**
     * Register to receive notifications with remote audio buffers before they are rendered.
     * This gives you access to the audio data received, allowing for example the implementation of custom filters/effects.
     * If the returned NotificationId is valid, you must call EOS_RTCAudio_RemoveNotifyAudioBeforeRender when you no longer wish to
     * have your CompletionDelegate called.
     * 
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when a presence change occurs
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTCAudio_RemoveNotifyAudioBeforeRender
     */
    private func ____AddNotifyAudioBeforeRender(
        _ Options: inout SwiftEOS_RTCAudio_AddNotifyAudioBeforeRenderOptions?,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: CompletionDelegate,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromInOutSwiftObject(&Options, managedBy: pointerManager) { Options in
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
     * Register to receive notifications when local audio buffers are about to be encoded and sent.
     * This gives you access to the audio data about to be sent, allowing for example the implementation of custom filters/effects.
     * If the returned NotificationId is valid, you must call EOS_RTCAudio_RemoveNotifyAudioBeforeSend when you no longer wish to
     * have your CompletionDelegate called.
     * 
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when a presence change occurs
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTCAudio_RemoveNotifyAudioBeforeSend
     */
    private func ____AddNotifyAudioBeforeSend(
        _ Options: inout SwiftEOS_RTCAudio_AddNotifyAudioBeforeSendOptions?,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioBeforeSendCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioBeforeSendCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: CompletionDelegate,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromInOutSwiftObject(&Options, managedBy: pointerManager) { Options in
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
     * Register to receive notifications when an audio device is added or removed to the system.
     * If the returned NotificationId is valid, you must call EOS_RTCAudio_RemoveNotifyAudioDevicesChanged when you no longer wish
     * to have your CompletionDelegate called.
     * 
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when an audio device change occurs
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTCAudio_RemoveNotifyAudioDevicesChanged
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
     * Register to receive notifications when audio input state changed.
     * If the returned NotificationId is valid, you must call EOS_RTCAudio_RemoveNotifyAudioInputState when you no longer wish to
     * have your CompletionDelegate called.
     * 
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when audio input state changes
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTCAudio_RemoveNotifyAudioInputState
     */
    private func ____AddNotifyAudioInputState(
        _ Options: inout SwiftEOS_RTCAudio_AddNotifyAudioInputStateOptions?,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioInputStateCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioInputStateCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: CompletionDelegate,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromInOutSwiftObject(&Options, managedBy: pointerManager) { Options in
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
     * Register to receive notifications when audio output state changed.
     * If the returned NotificationId is valid, you must call EOS_RTCAudio_RemoveNotifyAudioOutputState when you no longer wish to
     * have your CompletionDelegate called.
     * 
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when audio output state changes
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTCAudio_RemoveNotifyAudioOutputState
     */
    private func ____AddNotifyAudioOutputState(
        _ Options: inout SwiftEOS_RTCAudio_AddNotifyAudioOutputStateOptions?,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAudio_AudioOutputStateCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioOutputStateCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: CompletionDelegate,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromInOutSwiftObject(&Options, managedBy: pointerManager) { Options in
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
     * Register to receive notifications when a room participant audio status is updated (f.e when speaking flag changes).
     * If the returned NotificationId is valid, you must call EOS_RTCAudio_RemoveNotifyParticipantUpdated when you no longer wish
     * to have your CompletionDelegate called.
     * 
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when a presence change occurs
     * @return Notification ID representing the registered callback if successful, an invalid NotificationId if not
     * 
     * @see EOS_INVALID_NOTIFICATIONID
     * @see EOS_RTCAudio_RemoveNotifyParticipantUpdated
     */
    private func ____AddNotifyParticipantUpdated(
        _ Options: inout SwiftEOS_RTCAudio_AddNotifyParticipantUpdatedOptions?,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: CompletionDelegate,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromInOutSwiftObject(&Options, managedBy: pointerManager) { Options in
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
     * Fetches an audio input device's info from then given index. The returned value should not be cached and important
     * information should be copied off of the result object immediately.
     * 
     * - Parameter Options:  structure containing the index being accessed
     * @return A pointer to the device information, or NULL on error. You should NOT keep hold of this pointer.
     * @see EOS_RTCAudio_GetAudioInputDevicesCount
     * @see EOS_RTCAudio_AddNotifyAudioDevicesChanged
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
                    try SwiftEOS_RTCAudio_AudioInputDeviceInfo.init(sdkObject: $0.pointee) }
            ) }
    }

    /**
     * Returns the number of audio input devices available in the system.
     * The returned value should not be cached and should instead be used immediately with the EOS_RTCAudio_GetAudioInputDeviceByIndex
     * function.
     * 
     * - Parameter Options:  structure containing the parameters for the operation
     * @return The number of audio input devices
     * @see EOS_RTCAudio_GetAudioInputDeviceByIndex
     * @see EOS_RTCAudio_AddNotifyAudioDevicesChanged
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
     * Fetches an audio output device's info from then given index.
     * The returned value should not be cached and important information should be copied off of the result object immediately.
     * 
     * - Parameter Options:  structure containing the index being accessed
     * @return A pointer to the device information, or NULL on error. You should NOT keep hold of this pointer.
     * @see EOS_RTCAudio_GetAudioOutputDevicesCount
     * @see EOS_RTCAudio_AddNotifyAudioDevicesChanged
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
                    try SwiftEOS_RTCAudio_AudioOutputDeviceInfo.init(sdkObject: $0.pointee) }
            ) }
    }

    /**
     * Returns the number of audio output devices available in the system.
     * The returned value should not be cached and should instead be used immediately with the EOS_RTCAudio_GetAudioOutputDeviceByIndex
     * function.
     * 
     * - Parameter Options:  structure containing the parameters for the operation
     * @return The number of audio output devices
     * @see EOS_RTCAudio_GetAudioOutputDeviceByIndex
     * @see EOS_RTCAudio_AddNotifyAudioDevicesChanged
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
     * Use this function to inform the audio system of a user.
     * This function is only necessary for some platforms.
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * @return EOS_Success if the user was successfully registered, EOS_UnexpectedError otherwise.
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
     * Use this function to push a new audio buffer to be sent to the participants of a room.
     * This should only be used if Manual Audio Input was enabled locally for the specified room.
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * @return EOS_Success if the buffer was successfully queued for sending
     *         EOS_InvalidParameters if any of the parameters are incorrect
     *         EOS_NotFound if the specified room was not found
     *         EOS_InvalidState if manual recording was not enabled when joining the room.
     * @see EOS_RTC_JoinRoomOptions
     * @see EOS_Lobby_LocalRTCOptions
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
     * Use this function to set audio input settings, such as the active input device, volume, or platform AEC.
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * @return EOS_Success if the setting was successful
     *         EOS_InvalidParameters if any of the parameters are incorrect
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
     * Use this function to set audio output settings, such as the active output device or volume.
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * @return EOS_Success if the setting was successful
     *         EOS_InvalidParameters if any of the parameters are incorrect
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
     * Use this function to remove a user that was added with EOS_RTCAudio_RegisterPlatformAudioUser.
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * @return EOS_Success if the user was successfully unregistered, EOS_UnexpectedError otherwise.
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
     * Use this function to tweak incoming audio options per room.
     * 
     * @note Due to internal implementation details, this function requires that you first register to any notification for room
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when the operation completes, either successfully or in error
     * @return EOS_Success if the operation succeeded
     *         EOS_InvalidParameters if any of the parameters are incorrect
     *         EOS_NotFound if either the local user or specified participant are not in the room
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
     * Use this function to tweak outgoing audio options per room.
     * 
     * @note Due to internal implementation details, this function requires that you first register to any notification for room
     * 
     * - Parameter Options:  structure containing the parameters for the operation.
     * - Parameter ClientData:  Arbitrary data that is passed back in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when the operation completes, either successfully or in error
     * @return EOS_Success if the operation succeeded
     *         EOS_InvalidParameters if any of the parameters are incorrect
     *         EOS_NotFound if the local user is not in the room
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
