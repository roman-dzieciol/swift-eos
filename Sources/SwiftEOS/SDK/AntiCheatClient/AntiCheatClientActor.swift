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
    Optional. Adds an integrity catalog and certificate pair from outside the game directory,
    for example to support mods that load from elsewhere.
    Mode: All

    - Parameter PathToBinFile: UTF-8 path to the .bin catalog file to add
    - Throws: EOS_InvalidParameters - If input data was invalid
    */
    public func AddExternalIntegrityCatalog(
        PathToBinFile: String?
    ) throws {
        try ____AddExternalIntegrityCatalog(.init(PathToBinFile: PathToBinFile))
    }

    /**
    Add a callback issued when a new message must be dispatched to a connected peer. The bound function will only be called
    between a successful call to EOS_AntiCheatClient_BeginSession and the matching EOS_AntiCheatClient_EndSession call in mode EOS_ACCM_PeerToPeer.
    Mode: EOS_ACCM_PeerToPeer.

    - Parameter NotificationFn: The callback to be fired
    - Returns: A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
    */
    public func AddNotifyMessageToPeer(
        NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo> {
        try ____AddNotifyMessageToPeer(NotificationFn)
    }

    /**
    Add a callback issued when a new message must be dispatched to the game server. The bound function will only be called
    between a successful call to EOS_AntiCheatClient_BeginSession and the matching EOS_AntiCheatClient_EndSession call in mode EOS_ACCM_ClientServer.
    Mode: EOS_ACCM_ClientServer.

    - Parameter NotificationFn: The callback to be fired
    - Returns: A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
    */
    public func AddNotifyMessageToServer(
        NotificationFn: @escaping (SwiftEOS_AntiCheatClient_OnMessageToServerCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatClient_OnMessageToServerCallbackInfo> {
        try ____AddNotifyMessageToServer(NotificationFn)
    }

    /**
    Add a callback issued when an action must be applied to a connected client. The bound function will only be called
    between a successful call to EOS_AntiCheatClient_BeginSession and the matching EOS_AntiCheatClient_EndSession call in mode EOS_ACCM_PeerToPeer.
    Mode: EOS_ACCM_PeerToPeer.

    - Parameter NotificationFn: The callback to be fired
    - Returns: A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
    */
    public func AddNotifyPeerActionRequired(
        NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo> {
        try ____AddNotifyPeerActionRequired(NotificationFn)
    }

    /**
    Add an optional callback issued when a connected peer's authentication status changes. The bound function will only be called
    between a successful call to EOS_AntiCheatClient_BeginSession and the matching EOS_AntiCheatClient_EndSession call in mode EOS_ACCM_PeerToPeer.
    Mode: EOS_ACCM_PeerToPeer.

    - Parameter NotificationFn: The callback to be fired
    - Returns: A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
    */
    public func AddNotifyPeerAuthStatusChanged(
        NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo> {
        try ____AddNotifyPeerAuthStatusChanged(NotificationFn)
    }

    /**
    Begins a multiplayer game session. After this call returns successfully, the client is ready to exchange
    anti-cheat messages with a game server or peer(s). When leaving one game session and connecting to a
    different one, a new anti-cheat session must be created by calling EOS_AntiCheatClient_EndSession and EOS_AntiCheatClient_BeginSession again.
    Mode: All

    - Parameter LocalUserId: Logged in user identifier from earlier call to EOS_Connect_Login family of functions
    - Parameter Mode: Operating mode
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    */
    public func BeginSession(
        LocalUserId: EOS_ProductUserId?,
        Mode: EOS_EAntiCheatClientMode
    ) throws {
        try ____BeginSession(.init(
                LocalUserId: LocalUserId,
                Mode: Mode
            ))
    }

    /**
    Ends a multiplayer game session, either by leaving an ongoing session or shutting it down entirely.
    Mode: All

    Must be called when the multiplayer session ends, or when the local user leaves a session in progress.

    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    */
    public func EndSession() throws {
        try ____EndSession()
    }

    /**
    Optional NetProtect feature for game message encryption.
    Calculates the required decrypted buffer size for a given input data length.
    This will not change for a given SDK version, and allows one time allocation of reusable buffers.
    Mode: EOS_ACCM_ClientServer.

    - Parameter DataLengthBytes: Length in bytes of input
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    - Returns: The length in bytes that is required to call ProtectMessage on the given input size.
    */
    public func GetProtectMessageOutputLength(
        DataLengthBytes: Int
    ) throws -> Int? {
        try ____GetProtectMessageOutputLength(.init(DataLengthBytes: DataLengthBytes))
    }

    /**
    Polls for changes in client integrity status.
    Mode: All

    The purpose of this function is to allow the game to display information
    about anti-cheat integrity problems to the user. These are often the result of a
    corrupt game installation rather than cheating attempts. This function does not
    check for violations, it only provides information about violations which have
    automatically been discovered by the anti-cheat client. Such a violation may occur
    at any time and afterwards the user will be unable to join any protected multiplayer
    session until after restarting the game.

    - Parameter OutMessageLength: The size of OutMessage in bytes. Recommended size is 256 bytes.
    - Parameter ViolationType: On success, receives a code describing the violation that occurred.
    - Parameter OutMessage: On success, receives a string describing the violation which should be displayed to the user.
    - Throws: EOS_LimitExceeded - If OutMessage is too small to receive the message string. Call again with a larger OutMessage.
              EOS_NotFound - If no violation has occurred since the last call
    */
    public func PollStatus(
        OutMessageLength: Int,
        ViolationType: inout EOS_EAntiCheatClientViolationType?,
        OutMessage: inout String?
    ) throws {
        try ____PollStatus(
            .init(OutMessageLength: OutMessageLength),
            &ViolationType,
            &OutMessage
        )
    }

    /**
    Optional NetProtect feature for game message encryption.
    Encrypts an arbitrary message that will be sent to the game server and decrypted on the other side.
    Mode: EOS_ACCM_ClientServer.

    Options.Data and OutBuffer may refer to the same buffer to encrypt in place.

    - Parameter Data: The data to encrypt
    - Note: ``EOS/_tagEOS_AntiCheatClient_ProtectMessageOptions/DataLengthBytes``:
    Length in bytes of input
    - Parameter OutBufferSizeBytes: The size in bytes of OutBuffer
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    - Returns: On success, buffer where encrypted message data will be written.
    */
    public func ProtectMessage(
        Data: [UInt8]?,
        OutBufferSizeBytes: Int
    ) throws -> [UInt8]? {
        try ____ProtectMessage(.init(
                Data: Data,
                OutBufferSizeBytes: OutBufferSizeBytes
            ))
    }

    /**
    Call when an anti-cheat message is received from a peer.
    Mode: EOS_ACCM_PeerToPeer.

    - Parameter PeerHandle: The handle describing the sender of this message
    - Parameter Data: The data received
    - Note: ``EOS/_tagEOS_AntiCheatClient_ReceiveMessageFromPeerOptions/DataLengthBytes``:
    The size of the data received
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    */
    public func ReceiveMessageFromPeer(
        PeerHandle: EOS_AntiCheatCommon_ClientHandle,
        Data: [UInt8]?
    ) throws {
        try ____ReceiveMessageFromPeer(.init(
                PeerHandle: PeerHandle,
                Data: Data
            ))
    }

    /**
    Call when an anti-cheat message is received from the game server.
    Mode: EOS_ACCM_ClientServer.

    - Parameter Data: The data received
    - Note: ``EOS/_tagEOS_AntiCheatClient_ReceiveMessageFromServerOptions/DataLengthBytes``:
    The size of the data received
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    */
    public func ReceiveMessageFromServer(
        Data: [UInt8]?
    ) throws {
        try ____ReceiveMessageFromServer(.init(Data: Data))
    }

    /**
    Registers a connected peer-to-peer client.
    Mode: EOS_ACCM_PeerToPeer.

    Must be paired with a call to EOS_AntiCheatClient_UnregisterPeer if this user leaves the session
    in progress, or EOS_AntiCheatClient_EndSession if the entire session is ending.

    - Parameter PeerHandle: Locally unique value describing the remote user (e.g. a player object pointer)
    - Parameter ClientType: Type of remote user being registered
    - Parameter ClientPlatform: Remote user's platform, if known
    - Parameter AccountId: Identifier for the remote user. This is typically a string representation of an
    account ID, but it can be any string which is both unique (two different users will never
    have the same string) and consistent (if the same user connects to this game session
    twice, the same string will be used) in the scope of a single protected game session.
    - Parameter IpAddress: Optional IP address for the remote user. May be null if not available.
    IPv4 format: "0.0.0.0"
    IPv6 format: "0:0:0:0:0:0:0:0"
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    */
    public func RegisterPeer(
        PeerHandle: EOS_AntiCheatCommon_ClientHandle,
        ClientType: EOS_EAntiCheatCommonClientType,
        ClientPlatform: EOS_EAntiCheatCommonClientPlatform,
        AccountId: String?,
        IpAddress: String?
    ) throws {
        try ____RegisterPeer(.init(
                PeerHandle: PeerHandle,
                ClientType: ClientType,
                ClientPlatform: ClientPlatform,
                AccountId: AccountId,
                IpAddress: IpAddress
            ))
    }

    /**
    Optional NetProtect feature for game message encryption.
    Decrypts an encrypted message received from the game server.
    Mode: EOS_ACCM_ClientServer.

    Options.Data and OutBuffer may refer to the same buffer to decrypt in place.

    - Parameter Data: The data to decrypt
    - Note: ``EOS/_tagEOS_AntiCheatClient_UnprotectMessageOptions/DataLengthBytes``:
    Length in bytes of input
    - Parameter OutBufferSizeBytes: The size in bytes of OutBuffer
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    - Returns: On success, buffer where encrypted message data will be written.
    */
    public func UnprotectMessage(
        Data: [UInt8]?,
        OutBufferSizeBytes: Int
    ) throws -> [UInt8]? {
        try ____UnprotectMessage(.init(
                Data: Data,
                OutBufferSizeBytes: OutBufferSizeBytes
            ))
    }

    /**
    Unregisters a disconnected peer-to-peer client.
    Mode: EOS_ACCM_PeerToPeer.

    Must be called when a user leaves a session in progress.

    - Parameter PeerHandle: Locally unique value describing the remote user, as previously passed to EOS_AntiCheatClient_RegisterPeer
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    */
    public func UnregisterPeer(
        PeerHandle: EOS_AntiCheatCommon_ClientHandle
    ) throws {
        try ____UnregisterPeer(.init(PeerHandle: PeerHandle))
    }
}

extension SwiftEOS_AntiCheatClient_Actor {

    /**
    Optional. Adds an integrity catalog and certificate pair from outside the game directory,
    for example to support mods that load from elsewhere.
    Mode: All

    - Parameter Options: Structure containing input data.
    - Throws: EOS_InvalidParameters - If input data was invalid
    */
    private func ____AddExternalIntegrityCatalog(
        _ Options: SwiftEOS_AntiCheatClient_AddExternalIntegrityCatalogOptions
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
    Add a callback issued when a new message must be dispatched to a connected peer. The bound function will only be called
    between a successful call to EOS_AntiCheatClient_BeginSession and the matching EOS_AntiCheatClient_EndSession call in mode EOS_ACCM_PeerToPeer.
    Mode: EOS_ACCM_PeerToPeer.

    - Parameter NotificationFn: The callback to be fired
    - Returns: A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
    */
    private func ____AddNotifyMessageToPeer(
        _ NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo) -> Void
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
    Add a callback issued when a new message must be dispatched to the game server. The bound function will only be called
    between a successful call to EOS_AntiCheatClient_BeginSession and the matching EOS_AntiCheatClient_EndSession call in mode EOS_ACCM_ClientServer.
    Mode: EOS_ACCM_ClientServer.

    - Parameter NotificationFn: The callback to be fired
    - Returns: A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
    */
    private func ____AddNotifyMessageToServer(
        _ NotificationFn: @escaping (SwiftEOS_AntiCheatClient_OnMessageToServerCallbackInfo) -> Void
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
    Add a callback issued when an action must be applied to a connected client. The bound function will only be called
    between a successful call to EOS_AntiCheatClient_BeginSession and the matching EOS_AntiCheatClient_EndSession call in mode EOS_ACCM_PeerToPeer.
    Mode: EOS_ACCM_PeerToPeer.

    - Parameter NotificationFn: The callback to be fired
    - Returns: A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
    */
    private func ____AddNotifyPeerActionRequired(
        _ NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo) -> Void
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
    Add an optional callback issued when a connected peer's authentication status changes. The bound function will only be called
    between a successful call to EOS_AntiCheatClient_BeginSession and the matching EOS_AntiCheatClient_EndSession call in mode EOS_ACCM_PeerToPeer.
    Mode: EOS_ACCM_PeerToPeer.

    - Parameter NotificationFn: The callback to be fired
    - Returns: A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
    */
    private func ____AddNotifyPeerAuthStatusChanged(
        _ NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo) -> Void
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
    Begins a multiplayer game session. After this call returns successfully, the client is ready to exchange
    anti-cheat messages with a game server or peer(s). When leaving one game session and connecting to a
    different one, a new anti-cheat session must be created by calling EOS_AntiCheatClient_EndSession and EOS_AntiCheatClient_BeginSession again.
    Mode: All

    - Parameter Options: Structure containing input data.
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    */
    private func ____BeginSession(
        _ Options: SwiftEOS_AntiCheatClient_BeginSessionOptions
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
    Ends a multiplayer game session, either by leaving an ongoing session or shutting it down entirely.
    Mode: All

    Must be called when the multiplayer session ends, or when the local user leaves a session in progress.

    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    */
    private func ____EndSession() throws {
        try withPointerManager { pointerManager in
            try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_AntiCheatClient_EndSessionOptions(), managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatClient_EndSession(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Optional NetProtect feature for game message encryption.
    Calculates the required decrypted buffer size for a given input data length.
    This will not change for a given SDK version, and allows one time allocation of reusable buffers.
    Mode: EOS_ACCM_ClientServer.

    - Parameter Options: Structure containing input data.
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    - Returns: The length in bytes that is required to call ProtectMessage on the given input size.
    */
    private func ____GetProtectMessageOutputLength(
        _ Options: SwiftEOS_AntiCheatClient_GetProtectMessageOutputLengthOptions
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
    Polls for changes in client integrity status.
    Mode: All

    The purpose of this function is to allow the game to display information
    about anti-cheat integrity problems to the user. These are often the result of a
    corrupt game installation rather than cheating attempts. This function does not
    check for violations, it only provides information about violations which have
    automatically been discovered by the anti-cheat client. Such a violation may occur
    at any time and afterwards the user will be unable to join any protected multiplayer
    session until after restarting the game.

    - Parameter Options: Structure containing input data.
    - Parameter ViolationType: On success, receives a code describing the violation that occurred.
    - Parameter OutMessage: On success, receives a string describing the violation which should be displayed to the user.
    - Throws: EOS_LimitExceeded - If OutMessage is too small to receive the message string. Call again with a larger OutMessage.
              EOS_NotFound - If no violation has occurred since the last call
    */
    private func ____PollStatus(
        _ Options: SwiftEOS_AntiCheatClient_PollStatusOptions,
        _ ViolationType: inout EOS_EAntiCheatClientViolationType?,
        _ OutMessage: inout String?
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
    Optional NetProtect feature for game message encryption.
    Encrypts an arbitrary message that will be sent to the game server and decrypted on the other side.
    Mode: EOS_ACCM_ClientServer.

    Options.Data and OutBuffer may refer to the same buffer to encrypt in place.

    - Parameter Options: Structure containing input data.
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    - Returns: On success, buffer where encrypted message data will be written.
    */
    private func ____ProtectMessage(
        _ Options: SwiftEOS_AntiCheatClient_ProtectMessageOptions
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
    Call when an anti-cheat message is received from a peer.
    Mode: EOS_ACCM_PeerToPeer.

    - Parameter Options: Structure containing input data.
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    */
    private func ____ReceiveMessageFromPeer(
        _ Options: SwiftEOS_AntiCheatClient_ReceiveMessageFromPeerOptions
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
    Call when an anti-cheat message is received from the game server.
    Mode: EOS_ACCM_ClientServer.

    - Parameter Options: Structure containing input data.
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    */
    private func ____ReceiveMessageFromServer(
        _ Options: SwiftEOS_AntiCheatClient_ReceiveMessageFromServerOptions
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
    Registers a connected peer-to-peer client.
    Mode: EOS_ACCM_PeerToPeer.

    Must be paired with a call to EOS_AntiCheatClient_UnregisterPeer if this user leaves the session
    in progress, or EOS_AntiCheatClient_EndSession if the entire session is ending.

    - Parameter Options: Structure containing input data.
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    */
    private func ____RegisterPeer(
        _ Options: SwiftEOS_AntiCheatClient_RegisterPeerOptions
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
    Optional NetProtect feature for game message encryption.
    Decrypts an encrypted message received from the game server.
    Mode: EOS_ACCM_ClientServer.

    Options.Data and OutBuffer may refer to the same buffer to decrypt in place.

    - Parameter Options: Structure containing input data.
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    - Returns: On success, buffer where encrypted message data will be written.
    */
    private func ____UnprotectMessage(
        _ Options: SwiftEOS_AntiCheatClient_UnprotectMessageOptions
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
    Unregisters a disconnected peer-to-peer client.
    Mode: EOS_ACCM_PeerToPeer.

    Must be called when a user leaves a session in progress.

    - Parameter Options: Structure containing input data.
    - Throws: EOS_InvalidParameters - If input data was invalid
              EOS_AntiCheat_InvalidMode - If the current mode does not support this function
    */
    private func ____UnregisterPeer(
        _ Options: SwiftEOS_AntiCheatClient_UnregisterPeerOptions
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
