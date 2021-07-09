import Foundation
import EOSSDK
public class SwiftEOS_P2P_Actor: SwiftEOSActor {
    public let Handle: EOS_HP2P

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HP2P
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Accept connections from a specific peer. If this peer has not attempted to connect yet, when they do, they will automatically be accepted.
     * 
     * - Parameter Options:  Information about who would like to accept a connection, and which connection
     * @return EOS_EResult::EOS_Success - if the provided data is valid
     *         EOS_EResult::EOS_InvalidParameters - if the provided data is invalid
     */
    public func AcceptConnection(
        Options: SwiftEOS_P2P_AcceptConnectionOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_P2P_AcceptConnection(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Listen for when our packet queue has become full. This event gives an opportunity to read packets to make
     * room for new incoming packets. If this event fires and no packets are read by calling EOS_P2P_ReceivePacket
     * or the packet queue size is not increased by EOS_P2P_SetPacketQueueSize, any packets that are received after
     * this event are discarded until there is room again in the queue.
     * 
     * - Parameter Options:  Information about what version of the EOS_P2P_AddNotifyIncomingPacketQueueFull API is supported
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter IncomingPacketQueueFullHandler:  The callback to be fired when the incoming packet queue is full
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyIncomingPacketQueueFull(
        IncomingPacketQueueFullHandler: @escaping (SwiftEOS_P2P_OnIncomingPacketQueueFullInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_P2P_OnIncomingPacketQueueFullInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: IncomingPacketQueueFullHandler,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_P2P_AddNotifyIncomingPacketQueueFullOptions(), managedBy: pointerManager) { Options in
                        EOS_P2P_AddNotifyIncomingPacketQueueFull(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_P2P_OnIncomingPacketQueueFullInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_P2P_RemoveNotifyIncomingPacketQueueFull(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Listen for when a previously opened connection is closed.
     * 
     * - Parameter Options:  Information about who would like notifications about closed connections, and for which socket
     * - Parameter ClientData:  This value is returned to the caller when ConnectionClosedHandler is invoked
     * - Parameter ConnectionClosedHandler:  The callback to be fired when we an open connection has been closed
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyPeerConnectionClosed(
        Options: SwiftEOS_P2P_AddNotifyPeerConnectionClosedOptions,
        ConnectionClosedHandler: @escaping (SwiftEOS_P2P_OnRemoteConnectionClosedInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_P2P_OnRemoteConnectionClosedInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: ConnectionClosedHandler,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_P2P_AddNotifyPeerConnectionClosed(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_P2P_OnRemoteConnectionClosedInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_P2P_RemoveNotifyPeerConnectionClosed(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Listen for incoming connection requests on a particular Socket ID, or optionally all Socket IDs. The bound function
     * will only be called if the connection has not already been accepted.
     * 
     * - Parameter Options:  Information about who would like notifications, and (optionally) only for a specific socket
     * - Parameter ClientData:  This value is returned to the caller when ConnectionRequestHandler is invoked
     * - Parameter ConnectionRequestHandler:  The callback to be fired when we receive a connection request
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyPeerConnectionRequest(
        Options: SwiftEOS_P2P_AddNotifyPeerConnectionRequestOptions,
        ConnectionRequestHandler: @escaping (SwiftEOS_P2P_OnIncomingConnectionRequestInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_P2P_OnIncomingConnectionRequestInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: ConnectionRequestHandler,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_P2P_AddNotifyPeerConnectionRequest(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_P2P_OnIncomingConnectionRequestInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_P2P_RemoveNotifyPeerConnectionRequest(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Stop accepting new connections from a specific peer and close any open connections.
     * 
     * - Parameter Options:  Information about who would like to close a connection, and which connection.
     * @return EOS_EResult::EOS_Success - if the provided data is valid
     *         EOS_EResult::EOS_InvalidParameters - if the provided data is invalid
     */
    public func CloseConnection(
        Options: SwiftEOS_P2P_CloseConnectionOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_P2P_CloseConnection(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Close any open Connections for a specific Peer Connection ID.
     * 
     * - Parameter Options:  Information about who would like to close connections, and by what socket ID
     * @return EOS_EResult::EOS_Success - if the provided data is valid
     *         EOS_EResult::EOS_InvalidParameters - if the provided data is invalid
     */
    public func CloseConnections(
        Options: SwiftEOS_P2P_CloseConnectionsOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_P2P_CloseConnections(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Get our last-queried NAT-type, if it has been successfully queried.
     * 
     * - Parameter Options:  Information about what version of the EOS_P2P_GetNATType API is supported
     * - Parameter OutNATType:  The queried NAT Type, or unknown if unknown
     * @return EOS_EResult::EOS_Success - if we have cached data
     *         EOS_EResult::EOS_NotFound - If we do not have queried data cached
     */
    public func GetNATType() throws -> EOS_ENATType? {
        try withPointerManager { pointerManager in
            try withPointeeReturned(managedBy: pointerManager) { OutNATType in
                try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_P2P_GetNATTypeOptions(), managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_P2P_GetNATType(
                            Handle,
                            Options,
                            OutNATType
                        ) } } } }
    }

    /**
     * Gets the size of the packet that will be returned by ReceivePacket for a particular user, if there is any available
     * packets to be retrieved.
     * 
     * - Parameter Options:  Information about who is requesting the size of their next packet
     * - Parameter OutPacketSizeBytes:  The amount of bytes required to store the data of the next packet for the requested user
     * @return EOS_EResult::EOS_Success - If OutPacketSizeBytes was successfully set and there is data to be received
     *         EOS_EResult::EOS_InvalidParameters - If input was invalid
     *         EOS_EResult::EOS_NotFound  - If there are no packets available for the requesting user
     */
    public func GetNextReceivedPacketSize(
        Options: SwiftEOS_P2P_GetNextReceivedPacketSizeOptions
    ) throws -> Int? {
        try withPointerManager { pointerManager in
            try withIntegerPointerReturnedAsInteger { OutPacketSizeBytes in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_P2P_GetNextReceivedPacketSize(
                            Handle,
                            Options,
                            OutPacketSizeBytes
                        ) } } } }
    }

    /**
     * Gets the current cached information related to the incoming and outgoing packet queues.
     * 
     * - Parameter Options:  Information about what version of the EOS_P2P_GetPacketQueueInfo API is supported
     * - Parameter OutPacketQueueInfo:  The current information of the incoming and outgoing packet queues
     * @return EOS_EResult::EOS_Success - if the input options were valid
     *         EOS_EResult::EOS_InvalidParameters - if the input was invalid in some way
     */
    public func GetPacketQueueInfo() throws -> _tagEOS_P2P_PacketQueueInfo? {
        try withPointerManager { pointerManager in
            try withPointeeReturned(managedBy: pointerManager) { OutPacketQueueInfo in
                try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_P2P_GetPacketQueueInfoOptions(), managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_P2P_GetPacketQueueInfo(
                            Handle,
                            Options,
                            OutPacketQueueInfo
                        ) } } } }
    }

    /**
     * Get the current chosen port and the amount of other ports to try above the chosen port if the chosen port is unavailable.
     * 
     * - Parameter Options:  Information about what version of the EOS_P2P_GetPortRange API is supported
     * - Parameter OutPort:  The port that will be tried first
     * - Parameter OutNumAdditionalPortsToTry:  The amount of ports to try above the value in OutPort, if OutPort is unavailable
     * @return EOS_EResult::EOS_Success - if the input options were valid
     *         EOS_EResult::EOS_InvalidParameters - if the input was invalid in some way
     */
    public func GetPortRange(
        OutPort: inout UInt16?,
        OutNumAdditionalPortsToTry: inout UInt16?
    ) throws {
        try withPointerManager { pointerManager in
            try withIntPointerFromInOutOptionalInt(&OutNumAdditionalPortsToTry) { OutNumAdditionalPortsToTry in
                try withIntPointerFromInOutOptionalInt(&OutPort) { OutPort in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_P2P_GetPortRangeOptions(), managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_P2P_GetPortRange(
                                Handle,
                                Options,
                                OutPort,
                                OutNumAdditionalPortsToTry
                            ) } } } } }
    }

    /**
     * Get the current relay control setting.
     * 
     * - Parameter Options:  Information about what version of the EOS_P2P_GetRelayControl API is supported
     * - Parameter OutRelayControl:  The relay control setting currently configured
     * @return EOS_EResult::EOS_Success - if the input was valid
     *         EOS_EResult::EOS_InvalidParameters - if the input was invalid in some way
     */
    public func GetRelayControl() throws -> EOS_ERelayControl? {
        try withPointerManager { pointerManager in
            try withPointeeReturned(managedBy: pointerManager) { OutRelayControl in
                try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_P2P_GetRelayControlOptions(), managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_P2P_GetRelayControl(
                            Handle,
                            Options,
                            OutRelayControl
                        ) } } } }
    }

    /**
     * Query the current NAT-type of our connection.
     * 
     * - Parameter Options:  Information about what version of the EOS_P2P_QueryNATType API is supported
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  The callback to be fired when we finish querying our NAT type
     */
    public func QueryNATType(
        CompletionDelegate: @escaping (SwiftEOS_P2P_OnQueryNATTypeCompleteInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_P2P_QueryNATTypeOptions(), managedBy: pointerManager) { Options in
                    EOS_P2P_QueryNATType(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_P2P_OnQueryNATTypeCompleteInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Receive the next packet for the local user, and information associated with this packet, if it exists.
     * 
     * - Parameter Options:  Information about who is requesting the size of their next packet, and how much data can be stored safely
     * - Parameter OutPeerId:  The Remote User who sent data. Only set if there was a packet to receive.
     * - Parameter OutSocketId:  The Socket ID of the data that was sent. Only set if there was a packet to receive.
     * - Parameter OutChannel:  The channel the data was sent on. Only set if there was a packet to receive.
     * - Parameter OutData:  Buffer to store the data being received. Must be at least EOS_P2P_GetNextReceivedPacketSize in length or data will be truncated
     * - Parameter OutBytesWritten:  The amount of bytes written to OutData. Only set if there was a packet to receive.
     * @return EOS_EResult::EOS_Success - If the packet was received successfully
     *         EOS_EResult::EOS_InvalidParameters - If input was invalid
     *         EOS_EResult::EOS_NotFound - If there are no packets available for the requesting user
     * - Parameter OutData:  - array num: OutBytesWritten
     */
    public func ReceivePacket(
        Options: SwiftEOS_P2P_ReceivePacketOptions,
        OutPeerId: inout EOS_ProductUserId?,
        OutSocketId: inout SwiftEOS_P2P_SocketId?,
        OutChannel: inout UInt8?,
        OutData: inout [UInt8]?
    ) throws {
        try withPointerManager { pointerManager in
            try withPointersToInOutArray(inoutArray: &OutData) { OutData,OutBytesWritten in
                try withIntPointerFromInOutOptionalInt(&OutChannel) { OutChannel in
                    try withSdkObjectPointerFromInOutSwiftObject(&OutSocketId, managedBy: pointerManager) { OutSocketId in
                        try withOptionalTrivialMutablePointerFromInOutOptionalTrivial(&OutPeerId, managedBy: pointerManager) { OutPeerId in
                            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                                try throwingSdkResult { 
                                    EOS_P2P_ReceivePacket(
                                        Handle,
                                        Options,
                                        OutPeerId,
                                        OutSocketId,
                                        OutChannel,
                                        OutData,
                                        OutBytesWritten
                                    ) } } } } } } }
    }

    /**
     * Send a packet to a peer at the specified address. If there is already an open connection to this peer, it will be
     * sent immediately. If there is no open connection, an attempt to connect to the peer will be made. An EOS_Success
     * result only means the data was accepted to be sent, not that it has been successfully delivered to the peer.
     * 
     * - Parameter Options:  Information about the data being sent, by who, to who
     * @return EOS_EResult::EOS_Success           - If packet was queued to be sent successfully
     *         EOS_EResult::EOS_InvalidParameters - If input was invalid
     *         EOS_EResult::EOS_LimitExceeded     - If amount of data being sent is too large, or the outgoing packet queue was full
     */
    public func SendPacket(
        Options: SwiftEOS_P2P_SendPacketOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_P2P_SendPacket(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Sets the maximum packet queue sizes that packets waiting to be sent or received can use. If the packet queue
     * size is made smaller than the current queue size while there are packets in the queue that would push this
     * packet size over, existing packets are kept but new packets may not be added to the full queue until enough
     * packets are sent or received.
     * 
     * - Parameter Options:  Information about packet queue size
     * @return EOS_EResult::EOS_Success - if the input options were valid
     *         EOS_EResult::EOS_InvalidParameters - if the input was invalid in some way
     */
    public func SetPacketQueueSize(
        Options: SwiftEOS_P2P_SetPacketQueueSizeOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_P2P_SetPacketQueueSize(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Set configuration options related to network ports.
     * 
     * - Parameter Options:  Information about network ports config options
     * @return EOS_EResult::EOS_Success - if the options were set successfully
     *         EOS_EResult::EOS_InvalidParameters - if the options are invalid in some way
     */
    public func SetPortRange(
        Options: SwiftEOS_P2P_SetPortRangeOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_P2P_SetPortRange(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Set how relay servers are to be used. This setting does not immediately apply to existing connections, but may apply to existing
     * connections if the connection requires renegotiation.
     * 
     * - Parameter Options:  Information about relay server config options
     * @return EOS_EResult::EOS_Success - if the options were set successfully
     *         EOS_EResult::EOS_InvalidParameters - if the options are invalid in some way
     */
    public func SetRelayControl(
        Options: SwiftEOS_P2P_SetRelayControlOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_P2P_SetRelayControl(
                        Handle,
                        Options
                    ) } } }
    }
}
