import Foundation
import EOSSDK
public class SwiftEOS_AntiCheatServer_Actor: SwiftEOSActor {
    public let Handle: EOS_HAntiCheatServer

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HAntiCheatServer
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Add a callback issued when an action must be applied to a connected client. The bound function
     * will only be called between a successful call to EOS_AntiCheatServer_BeginSession and the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data
     * - Parameter ClientData:  This value is returned to the caller when NotificationFn is invoked
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyClientActionRequired(
        NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo> {
        try ____AddNotifyClientActionRequired(NotificationFn)
    }

    /**
     * Add an optional callback issued when a connected client's authentication status changes. The bound function
     * will only be called between a successful call to EOS_AntiCheatServer_BeginSession and the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data
     * - Parameter ClientData:  This value is returned to the caller when NotificationFn is invoked
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyClientAuthStatusChanged(
        NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo> {
        try ____AddNotifyClientAuthStatusChanged(NotificationFn)
    }

    /**
     * Add a callback issued when a new message must be dispatched to a connected client. The bound function
     * will only be called between a successful call to EOS_AntiCheatServer_BeginSession and the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data
     * - Parameter ClientData:  This value is returned to the caller when NotificationFn is invoked
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyMessageToClient(
        NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo> {
        try ____AddNotifyMessageToClient(NotificationFn)
    }

    /**
     * Begin the gameplay session. Event callbacks must be configured with EOS_AntiCheatServer_AddNotifyMessageToClient
     * and EOS_AntiCheatServer_AddNotifyClientActionRequired before calling this function.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the initialization succeeded
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func BeginSession(
        Options: SwiftEOS_AntiCheatServer_BeginSessionOptions
    ) throws {
        try ____BeginSession(Options)
    }

    /**
     * End the gameplay session. Should be called when the server is shutting down or entering an idle state.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the initialization succeeded
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func EndSession() throws {
        try ____EndSession()
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Calculates the required decrypted buffer size for a given input data length.
     * This will not change for a given SDK version, and allows one time allocation of reusable buffers.
     * 
     * - Parameter Options:  Structure containing input data.
     * - Parameter OutBufferLengthBytes:  The length in bytes that is required to call ProtectMessage on the given input size.
     * 
     * @return EOS_Success - If the output length was calculated successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func GetProtectMessageOutputLength(
        Options: SwiftEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions
    ) throws -> Int? {
        try ____GetProtectMessageOutputLength(Options)
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a custom gameplay event.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogEvent(
        Options: SwiftEOS_AntiCheatCommon_LogEventOptions
    ) throws {
        try ____LogEvent(Options)
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a game round's end and outcome.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogGameRoundEnd(
        Options: SwiftEOS_AntiCheatCommon_LogGameRoundEndOptions
    ) throws {
        try ____LogGameRoundEnd(Options)
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a new game round start.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogGameRoundStart(
        Options: SwiftEOS_AntiCheatCommon_LogGameRoundStartOptions
    ) throws {
        try ____LogGameRoundStart(Options)
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player despawning in the game, for example as a result of the character's death,
     * switching to spectator mode, etc.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogPlayerDespawn(
        Options: SwiftEOS_AntiCheatCommon_LogPlayerDespawnOptions
    ) throws {
        try ____LogPlayerDespawn(Options)
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player being revived after being downed (see EOS_AntiCheatServer_LogPlayerTakeDamage options).
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogPlayerRevive(
        Options: SwiftEOS_AntiCheatCommon_LogPlayerReviveOptions
    ) throws {
        try ____LogPlayerRevive(Options)
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player spawning into the game.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogPlayerSpawn(
        Options: SwiftEOS_AntiCheatCommon_LogPlayerSpawnOptions
    ) throws {
        try ____LogPlayerSpawn(Options)
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs that a player has taken damage.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogPlayerTakeDamage(
        Options: SwiftEOS_AntiCheatCommon_LogPlayerTakeDamageOptions
    ) throws {
        try ____LogPlayerTakeDamage(Options)
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player's general state including position and view direction.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogPlayerTick(
        Options: SwiftEOS_AntiCheatCommon_LogPlayerTickOptions
    ) throws {
        try ____LogPlayerTick(Options)
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs that a player has used a special ability or item which affects their character's capabilities,
     * for example temporarily increasing their speed or allowing them to see nearby players behind walls.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogPlayerUseAbility(
        Options: SwiftEOS_AntiCheatCommon_LogPlayerUseAbilityOptions
    ) throws {
        try ____LogPlayerUseAbility(Options)
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs that a player has used a weapon, for example firing one bullet or making one melee attack.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogPlayerUseWeapon(
        Options: SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponOptions
    ) throws {
        try ____LogPlayerUseWeapon(Options)
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Encrypts an arbitrary message that will be sent to a game client and decrypted on the other side.
     * Options.Data and OutBuffer may refer to the same buffer to encrypt in place.
     * 
     * - Parameter Options:  Structure containing input data.
     * - Parameter OutBuffer:  On success, buffer where encrypted message data will be written.
     * - Parameter OutBufferLengthBytes:  Number of bytes that were written to OutBuffer.
     * 
     * @return EOS_Success - If the message was protected successfully
     *         EOS_InvalidParameters - If input data was invalid
     *         EOS_InvalidUser - If the specified ClientHandle was invalid or not currently registered. See RegisterClient.
     */
    public func ProtectMessage(
        Options: SwiftEOS_AntiCheatServer_ProtectMessageOptions
    ) throws -> [UInt8]? {
        try ____ProtectMessage(Options)
    }

    /**
     * Call when an anti-cheat message is received from a client.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the message was processed successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func ReceiveMessageFromClient(
        Options: SwiftEOS_AntiCheatServer_ReceiveMessageFromClientOptions
    ) throws {
        try ____ReceiveMessageFromClient(Options)
    }

    /**
     * Register a connected client. Must be paired with a call to UnregisterClient.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the player was registered successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func RegisterClient(
        Options: SwiftEOS_AntiCheatServer_RegisterClientOptions
    ) throws {
        try ____RegisterClient(Options)
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Registers a custom gameplay event.
     * All custom game events must be registered before EOS_AntiCheatServer_BeginSession is called for the first time.
     * After the first call to EOS_AntiCheatServer_BeginSession, this function cannot be called any longer.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was registered successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func RegisterEvent(
        Options: SwiftEOS_AntiCheatCommon_RegisterEventOptions
    ) throws {
        try ____RegisterEvent(Options)
    }

    /**
     * Optional. Sets or updates client details including input device and admin status.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the flags were updated successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func SetClientDetails(
        Options: SwiftEOS_AntiCheatCommon_SetClientDetailsOptions
    ) throws {
        try ____SetClientDetails(Options)
    }

    /**
     * Optional. Can be used to indicate that a client is legitimately known to be
     * temporarily unable to communicate, for example as a result of loading a new level.
     * The bIsNetworkActive flag must be set back to true when users enter normal
     * gameplay, otherwise anti-cheat enforcement will not work correctly.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the network state was updated successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func SetClientNetworkState(
        Options: SwiftEOS_AntiCheatServer_SetClientNetworkStateOptions
    ) throws {
        try ____SetClientNetworkState(Options)
    }

    /**
     * Optional. Sets or updates a game session identifier which can be attached to other data for reference.
     * The identifier can be updated at any time for currently and subsequently registered clients.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the game session identifier was set successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func SetGameSessionId(
        Options: SwiftEOS_AntiCheatCommon_SetGameSessionIdOptions
    ) throws {
        try ____SetGameSessionId(Options)
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Decrypts an encrypted message received from a game client.
     * Options.Data and OutBuffer may refer to the same buffer to decrypt in place.
     * 
     * - Parameter Options:  Structure containing input data.
     * - Parameter OutBuffer:  On success, buffer where encrypted message data will be written.
     * - Parameter OutBufferLengthBytes:  Number of bytes that were written to OutBuffer.
     * 
     * @return EOS_Success - If the message was unprotected successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func UnprotectMessage(
        Options: SwiftEOS_AntiCheatServer_UnprotectMessageOptions
    ) throws -> [UInt8]? {
        try ____UnprotectMessage(Options)
    }

    /**
     * Unregister a disconnected client.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the player was unregistered successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func UnregisterClient(
        Options: SwiftEOS_AntiCheatServer_UnregisterClientOptions
    ) throws {
        try ____UnregisterClient(Options)
    }
}

extension SwiftEOS_AntiCheatServer_Actor {

    /**
     * Add a callback issued when an action must be applied to a connected client. The bound function
     * will only be called between a successful call to EOS_AntiCheatServer_BeginSession and the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data
     * - Parameter ClientData:  This value is returned to the caller when NotificationFn is invoked
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    private func ____AddNotifyClientActionRequired(
        _ NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_AntiCheatServer_AddNotifyClientActionRequiredOptions(), managedBy: pointerManager) { Options in
                        EOS_AntiCheatServer_AddNotifyClientActionRequired(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_AntiCheatServer_RemoveNotifyClientActionRequired(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Add an optional callback issued when a connected client's authentication status changes. The bound function
     * will only be called between a successful call to EOS_AntiCheatServer_BeginSession and the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data
     * - Parameter ClientData:  This value is returned to the caller when NotificationFn is invoked
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    private func ____AddNotifyClientAuthStatusChanged(
        _ NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_AntiCheatServer_AddNotifyClientAuthStatusChangedOptions(), managedBy: pointerManager) { Options in
                        EOS_AntiCheatServer_AddNotifyClientAuthStatusChanged(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_AntiCheatServer_RemoveNotifyClientAuthStatusChanged(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Add a callback issued when a new message must be dispatched to a connected client. The bound function
     * will only be called between a successful call to EOS_AntiCheatServer_BeginSession and the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data
     * - Parameter ClientData:  This value is returned to the caller when NotificationFn is invoked
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    private func ____AddNotifyMessageToClient(
        _ NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_AntiCheatServer_AddNotifyMessageToClientOptions(), managedBy: pointerManager) { Options in
                        EOS_AntiCheatServer_AddNotifyMessageToClient(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_AntiCheatServer_RemoveNotifyMessageToClient(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Begin the gameplay session. Event callbacks must be configured with EOS_AntiCheatServer_AddNotifyMessageToClient
     * and EOS_AntiCheatServer_AddNotifyClientActionRequired before calling this function.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the initialization succeeded
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____BeginSession(
        _ Options: SwiftEOS_AntiCheatServer_BeginSessionOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_BeginSession(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * End the gameplay session. Should be called when the server is shutting down or entering an idle state.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the initialization succeeded
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____EndSession() throws {
        try withPointerManager { pointerManager in
            try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_AntiCheatServer_EndSessionOptions(), managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_EndSession(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Calculates the required decrypted buffer size for a given input data length.
     * This will not change for a given SDK version, and allows one time allocation of reusable buffers.
     * 
     * - Parameter Options:  Structure containing input data.
     * - Parameter OutBufferLengthBytes:  The length in bytes that is required to call ProtectMessage on the given input size.
     * 
     * @return EOS_Success - If the output length was calculated successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____GetProtectMessageOutputLength(
        _ Options: SwiftEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions
    ) throws -> Int? {
        try withPointerManager { pointerManager in
            try withIntegerPointerReturnedAsInteger { OutBufferLengthBytes in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_AntiCheatServer_GetProtectMessageOutputLength(
                            Handle,
                            Options,
                            OutBufferLengthBytes
                        ) } } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a custom gameplay event.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogEvent(
        _ Options: SwiftEOS_AntiCheatCommon_LogEventOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogEvent(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a game round's end and outcome.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogGameRoundEnd(
        _ Options: SwiftEOS_AntiCheatCommon_LogGameRoundEndOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogGameRoundEnd(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a new game round start.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogGameRoundStart(
        _ Options: SwiftEOS_AntiCheatCommon_LogGameRoundStartOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogGameRoundStart(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player despawning in the game, for example as a result of the character's death,
     * switching to spectator mode, etc.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogPlayerDespawn(
        _ Options: SwiftEOS_AntiCheatCommon_LogPlayerDespawnOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogPlayerDespawn(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player being revived after being downed (see EOS_AntiCheatServer_LogPlayerTakeDamage options).
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogPlayerRevive(
        _ Options: SwiftEOS_AntiCheatCommon_LogPlayerReviveOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogPlayerRevive(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player spawning into the game.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogPlayerSpawn(
        _ Options: SwiftEOS_AntiCheatCommon_LogPlayerSpawnOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogPlayerSpawn(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs that a player has taken damage.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogPlayerTakeDamage(
        _ Options: SwiftEOS_AntiCheatCommon_LogPlayerTakeDamageOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogPlayerTakeDamage(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player's general state including position and view direction.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogPlayerTick(
        _ Options: SwiftEOS_AntiCheatCommon_LogPlayerTickOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogPlayerTick(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs that a player has used a special ability or item which affects their character's capabilities,
     * for example temporarily increasing their speed or allowing them to see nearby players behind walls.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogPlayerUseAbility(
        _ Options: SwiftEOS_AntiCheatCommon_LogPlayerUseAbilityOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogPlayerUseAbility(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs that a player has used a weapon, for example firing one bullet or making one melee attack.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogPlayerUseWeapon(
        _ Options: SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogPlayerUseWeapon(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Encrypts an arbitrary message that will be sent to a game client and decrypted on the other side.
     * Options.Data and OutBuffer may refer to the same buffer to encrypt in place.
     * 
     * - Parameter Options:  Structure containing input data.
     * - Parameter OutBuffer:  On success, buffer where encrypted message data will be written.
     * - Parameter OutBufferLengthBytes:  Number of bytes that were written to OutBuffer.
     * 
     * @return EOS_Success - If the message was protected successfully
     *         EOS_InvalidParameters - If input data was invalid
     *         EOS_InvalidUser - If the specified ClientHandle was invalid or not currently registered. See RegisterClient.
     */
    private func ____ProtectMessage(
        _ Options: SwiftEOS_AntiCheatServer_ProtectMessageOptions
    ) throws -> [UInt8]? {
        try withPointerManager { pointerManager in
            try withElementPointerPointersReturnedAsArray { OutBuffer,OutBufferLengthBytes in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_AntiCheatServer_ProtectMessage(
                            Handle,
                            Options,
                            OutBuffer,
                            OutBufferLengthBytes
                        ) } } } }
    }

    /**
     * Call when an anti-cheat message is received from a client.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the message was processed successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____ReceiveMessageFromClient(
        _ Options: SwiftEOS_AntiCheatServer_ReceiveMessageFromClientOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_ReceiveMessageFromClient(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Register a connected client. Must be paired with a call to UnregisterClient.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the player was registered successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____RegisterClient(
        _ Options: SwiftEOS_AntiCheatServer_RegisterClientOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_RegisterClient(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Registers a custom gameplay event.
     * All custom game events must be registered before EOS_AntiCheatServer_BeginSession is called for the first time.
     * After the first call to EOS_AntiCheatServer_BeginSession, this function cannot be called any longer.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was registered successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____RegisterEvent(
        _ Options: SwiftEOS_AntiCheatCommon_RegisterEventOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_RegisterEvent(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional. Sets or updates client details including input device and admin status.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the flags were updated successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____SetClientDetails(
        _ Options: SwiftEOS_AntiCheatCommon_SetClientDetailsOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_SetClientDetails(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional. Can be used to indicate that a client is legitimately known to be
     * temporarily unable to communicate, for example as a result of loading a new level.
     * The bIsNetworkActive flag must be set back to true when users enter normal
     * gameplay, otherwise anti-cheat enforcement will not work correctly.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the network state was updated successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____SetClientNetworkState(
        _ Options: SwiftEOS_AntiCheatServer_SetClientNetworkStateOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_SetClientNetworkState(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional. Sets or updates a game session identifier which can be attached to other data for reference.
     * The identifier can be updated at any time for currently and subsequently registered clients.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the game session identifier was set successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____SetGameSessionId(
        _ Options: SwiftEOS_AntiCheatCommon_SetGameSessionIdOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_SetGameSessionId(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Decrypts an encrypted message received from a game client.
     * Options.Data and OutBuffer may refer to the same buffer to decrypt in place.
     * 
     * - Parameter Options:  Structure containing input data.
     * - Parameter OutBuffer:  On success, buffer where encrypted message data will be written.
     * - Parameter OutBufferLengthBytes:  Number of bytes that were written to OutBuffer.
     * 
     * @return EOS_Success - If the message was unprotected successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____UnprotectMessage(
        _ Options: SwiftEOS_AntiCheatServer_UnprotectMessageOptions
    ) throws -> [UInt8]? {
        try withPointerManager { pointerManager in
            try withElementPointerPointersReturnedAsArray { OutBuffer,OutBufferLengthBytes in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_AntiCheatServer_UnprotectMessage(
                            Handle,
                            Options,
                            OutBuffer,
                            OutBufferLengthBytes
                        ) } } } }
    }

    /**
     * Unregister a disconnected client.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the player was unregistered successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____UnregisterClient(
        _ Options: SwiftEOS_AntiCheatServer_UnregisterClientOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_UnregisterClient(
                        Handle,
                        Options
                    ) } } }
    }
}
