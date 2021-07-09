import Foundation
import EOSSDK
public class SwiftEOS_AntiCheatClient_Actor: SwiftEOSActor {
    public let Handle: EOS_HAntiCheatClient

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HAntiCheatClient
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Optional. Adds an integrity catalog and certificate pair from outside the game directory,
     * for example to support mods that load from elsewhere.
     * Mode: All
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the integrity catalog was added successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func AddExternalIntegrityCatalog(
        Options: SwiftEOS_AntiCheatClient_AddExternalIntegrityCatalogOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatClient_AddExternalIntegrityCatalog(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Add a callback issued when a new message must be dispatched to a connected peer. The bound function will only be called
     * between a successful call to EOS_AntiCheatClient_BeginSession and the matching EOS_AntiCheatClient_EndSession call in mode EOS_ACCM_PeerToPeer.
     * Mode: EOS_ACCM_PeerToPeer.
     * 
     * - Parameter Options:  Structure containing input data
     * - Parameter ClientData:  This value is returned to the caller when NotificationFn is invoked
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyMessageToPeer(
        NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_AntiCheatClient_AddNotifyMessageToPeerOptions(), managedBy: pointerManager) { Options in
                        EOS_AntiCheatClient_AddNotifyMessageToPeer(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_AntiCheatClient_RemoveNotifyMessageToPeer(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Add a callback issued when a new message must be dispatched to the game server. The bound function will only be called
     * between a successful call to EOS_AntiCheatClient_BeginSession and the matching EOS_AntiCheatClient_EndSession call in mode EOS_ACCM_ClientServer.
     * Mode: EOS_ACCM_ClientServer.
     * 
     * - Parameter Options:  Structure containing input data
     * - Parameter ClientData:  This value is returned to the caller when NotificationFn is invoked
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyMessageToServer(
        NotificationFn: @escaping (SwiftEOS_AntiCheatClient_OnMessageToServerCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatClient_OnMessageToServerCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_AntiCheatClient_AddNotifyMessageToServerOptions(), managedBy: pointerManager) { Options in
                        EOS_AntiCheatClient_AddNotifyMessageToServer(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_AntiCheatClient_OnMessageToServerCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_AntiCheatClient_RemoveNotifyMessageToServer(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Add a callback issued when an action must be applied to a connected client. The bound function will only be called
     * between a successful call to EOS_AntiCheatClient_BeginSession and the matching EOS_AntiCheatClient_EndSession call in mode EOS_ACCM_PeerToPeer.
     * Mode: EOS_ACCM_PeerToPeer.
     * 
     * - Parameter Options:  Structure containing input data
     * - Parameter ClientData:  This value is returned to the caller when NotificationFn is invoked
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyPeerActionRequired(
        NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_AntiCheatClient_AddNotifyPeerActionRequiredOptions(), managedBy: pointerManager) { Options in
                        EOS_AntiCheatClient_AddNotifyPeerActionRequired(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_AntiCheatClient_RemoveNotifyPeerActionRequired(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Add an optional callback issued when a connected peer's authentication status changes. The bound function will only be called
     * between a successful call to EOS_AntiCheatClient_BeginSession and the matching EOS_AntiCheatClient_EndSession call in mode EOS_ACCM_PeerToPeer.
     * Mode: EOS_ACCM_PeerToPeer.
     * 
     * - Parameter Options:  Structure containing input data
     * - Parameter ClientData:  This value is returned to the caller when NotificationFn is invoked
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyPeerAuthStatusChanged(
        NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_AntiCheatClient_AddNotifyPeerAuthStatusChangedOptions(), managedBy: pointerManager) { Options in
                        EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_AntiCheatClient_RemoveNotifyPeerAuthStatusChanged(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Begins a multiplayer game session. After this call returns successfully, the client is ready to exchange
     * anti-cheat messages with a game server or peer(s). When leaving one game session and connecting to a
     * different one, a new anti-cheat session must be created by calling EOS_AntiCheatClient_EndSession and EOS_AntiCheatClient_BeginSession again.
     * Mode: All
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the session was started successfully
     *         EOS_InvalidParameters - If input data was invalid
     *         EOS_AntiCheat_InvalidMode - If the current mode does not support this function
     */
    public func BeginSession(
        Options: SwiftEOS_AntiCheatClient_BeginSessionOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatClient_BeginSession(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Ends a multiplayer game session, either by leaving an ongoing session or shutting it down entirely.
     * Mode: All
     * Must be called when the multiplayer session ends, or when the local user leaves a session in progress.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the session was ended normally
     *         EOS_InvalidParameters - If input data was invalid
     *         EOS_AntiCheat_InvalidMode - If the current mode does not support this function
     */
    public func EndSession() throws {
        try withPointerManager { pointerManager in
            try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_AntiCheatClient_EndSessionOptions(), managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatClient_EndSession(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Calculates the required decrypted buffer size for a given input data length.
     * This will not change for a given SDK version, and allows one time allocation of reusable buffers.
     * Mode: EOS_ACCM_ClientServer.
     * 
     * - Parameter Options:  Structure containing input data.
     * - Parameter OutBufferLengthBytes:  The length in bytes that is required to call ProtectMessage on the given input size.
     * 
     * @return EOS_Success - If the output length was calculated successfully
     *         EOS_InvalidParameters - If input data was invalid
     *         EOS_AntiCheat_InvalidMode - If the current mode does not support this function
     */
    public func GetProtectMessageOutputLength(
        Options: SwiftEOS_AntiCheatClient_GetProtectMessageOutputLengthOptions
    ) throws -> Int? {
        try withPointerManager { pointerManager in
            try withIntegerPointerReturnedAsInteger { OutBufferLengthBytes in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_AntiCheatClient_GetProtectMessageOutputLength(
                            Handle,
                            Options,
                            OutBufferLengthBytes
                        ) } } } }
    }

    /**
     * Polls for changes in client integrity status.
     * Mode: All
     * The purpose of this function is to allow the game to display information
     * about anti-cheat integrity problems to the user. These are often the result of a
     * corrupt game installation rather than cheating attempts. This function does not
     * check for violations, it only provides information about violations which have
     * automatically been discovered by the anti-cheat client. Such a violation may occur
     * at any time and afterwards the user will be unable to join any protected multiplayer
     * session until after restarting the game.
     * 
     * - Parameter Options:  Structure containing input data.
     * - Parameter ViolationType:  On success, receives a code describing the violation that occurred.
     * - Parameter OutMessage:  On success, receives a string describing the violation which should be displayed to the user.
     * 
     * @return EOS_Success - If violation information was returned successfully
     * 		   EOS_LimitExceeded - If OutMessage is too small to receive the message string. Call again with a larger OutMessage.
     *         EOS_NotFound - If no violation has occurred since the last call
     * - Parameter OutMessage:  - array num: OutMessageLength
     */
    public func PollStatus(
        Options: SwiftEOS_AntiCheatClient_PollStatusOptions,
        ViolationType: inout EOS_EAntiCheatClientViolationType?,
        OutMessage: inout String?
    ) throws {
        try withPointerManager { pointerManager in
            try withCCharPointerFromInOutOptionalString(inoutOptionalString: &OutMessage, capacity: Options.OutMessageLength) { OutMessage in
                try withTrivialMutablePointerFromInOutOptionalTrivial(&ViolationType, managedBy: pointerManager) { ViolationType in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_AntiCheatClient_PollStatus(
                                Handle,
                                Options,
                                ViolationType,
                                OutMessage
                            ) } } } } }
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Encrypts an arbitrary message that will be sent to the game server and decrypted on the other side.
     * Mode: EOS_ACCM_ClientServer.
     * Options.Data and OutBuffer may refer to the same buffer to encrypt in place.
     * 
     * - Parameter Options:  Structure containing input data.
     * - Parameter OutBuffer:  On success, buffer where encrypted message data will be written.
     * - Parameter OutBufferLengthBytes:  Number of bytes that were written to OutBuffer.
     * 
     * @return EOS_Success - If the message was protected successfully
     *         EOS_InvalidParameters - If input data was invalid
     *         EOS_AntiCheat_InvalidMode - If the current mode does not support this function
     */
    public func ProtectMessage(
        Options: SwiftEOS_AntiCheatClient_ProtectMessageOptions
    ) throws -> [UInt8]? {
        try withPointerManager { pointerManager in
            try withElementPointerPointersReturnedAsArray { OutBuffer,OutBufferLengthBytes in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_AntiCheatClient_ProtectMessage(
                            Handle,
                            Options,
                            OutBuffer,
                            OutBufferLengthBytes
                        ) } } } }
    }

    /**
     * Call when an anti-cheat message is received from a peer.
     * Mode: EOS_ACCM_PeerToPeer.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the message was processed successfully
     *         EOS_InvalidParameters - If input data was invalid
     *         EOS_AntiCheat_InvalidMode - If the current mode does not support this function
     */
    public func ReceiveMessageFromPeer(
        Options: SwiftEOS_AntiCheatClient_ReceiveMessageFromPeerOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatClient_ReceiveMessageFromPeer(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Call when an anti-cheat message is received from the game server.
     * Mode: EOS_ACCM_ClientServer.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the message was processed successfully
     *         EOS_InvalidParameters - If input data was invalid
     *         EOS_AntiCheat_InvalidMode - If the current mode does not support this function
     */
    public func ReceiveMessageFromServer(
        Options: SwiftEOS_AntiCheatClient_ReceiveMessageFromServerOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatClient_ReceiveMessageFromServer(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Registers a connected peer-to-peer client.
     * Mode: EOS_ACCM_PeerToPeer.
     * Must be paired with a call to EOS_AntiCheatClient_UnregisterPeer if this user leaves the session
     * in progress, or EOS_AntiCheatClient_EndSession if the entire session is ending.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the player was registered successfully
     *         EOS_InvalidParameters - If input data was invalid
     *         EOS_AntiCheat_InvalidMode - If the current mode does not support this function
     */
    public func RegisterPeer(
        Options: SwiftEOS_AntiCheatClient_RegisterPeerOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatClient_RegisterPeer(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Decrypts an encrypted message received from the game server.
     * Mode: EOS_ACCM_ClientServer.
     * Options.Data and OutBuffer may refer to the same buffer to decrypt in place.
     * 
     * - Parameter Options:  Structure containing input data.
     * - Parameter OutBuffer:  On success, buffer where encrypted message data will be written.
     * - Parameter OutBufferLengthBytes:  Number of bytes that were written to OutBuffer.
     * 
     * @return EOS_Success - If the message was unprotected successfully
     *         EOS_InvalidParameters - If input data was invalid
     *         EOS_AntiCheat_InvalidMode - If the current mode does not support this function
     */
    public func UnprotectMessage(
        Options: SwiftEOS_AntiCheatClient_UnprotectMessageOptions
    ) throws -> [UInt8]? {
        try withPointerManager { pointerManager in
            try withElementPointerPointersReturnedAsArray { OutBuffer,OutBufferLengthBytes in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_AntiCheatClient_UnprotectMessage(
                            Handle,
                            Options,
                            OutBuffer,
                            OutBufferLengthBytes
                        ) } } } }
    }

    /**
     * Unregisters a disconnected peer-to-peer client.
     * Mode: EOS_ACCM_PeerToPeer.
     * Must be called when a user leaves a session in progress.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the player was unregistered successfully
     *         EOS_InvalidParameters - If input data was invalid
     *         EOS_AntiCheat_InvalidMode - If the current mode does not support this function
     */
    public func UnregisterPeer(
        Options: SwiftEOS_AntiCheatClient_UnregisterPeerOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatClient_UnregisterPeer(
                        Handle,
                        Options
                    ) } } }
    }
}
