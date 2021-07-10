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
     * - Parameter LocalUserId:  The Product User ID of the local user who is accepting any pending or future connections with RemoteUserId 
     * - Parameter RemoteUserId:  The Product User ID of the remote user who has either sent a connection request or is expected to in the future 
     * - Parameter SocketId:  The socket ID of the connection to accept on 
     * - Returns:  EOS_EResult::EOS_Success - if the provided data is valid
     *         EOS_EResult::EOS_InvalidParameters - if the provided data is invalid
     */
    public func AcceptConnection(
        LocalUserId: EOS_ProductUserId?,
        RemoteUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?
    ) throws {
        try ____AcceptConnection(.init(
                LocalUserId: LocalUserId,
                RemoteUserId: RemoteUserId,
                SocketId: SocketId
            ))
    }

    /**
     * Listen for when our packet queue has become full. This event gives an opportunity to read packets to make
     * room for new incoming packets. If this event fires and no packets are read by calling EOS_P2P_ReceivePacket
     * or the packet queue size is not increased by EOS_P2P_SetPacketQueueSize, any packets that are received after
     * this event are discarded until there is room again in the queue.
     * 
     * - Parameter IncomingPacketQueueFullHandler:  The callback to be fired when the incoming packet queue is full
     * - Returns:  A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyIncomingPacketQueueFull(
        IncomingPacketQueueFullHandler: @escaping (SwiftEOS_P2P_OnIncomingPacketQueueFullInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_P2P_OnIncomingPacketQueueFullInfo> {
        try ____AddNotifyIncomingPacketQueueFull(IncomingPacketQueueFullHandler)
    }

    /**
     * Listen for when a previously opened connection is closed.
     * 
     * - Parameter LocalUserId:  The Product User ID of the local user who would like notifications 
     * - Parameter SocketId:  The optional socket ID to listen for to be closed. If NULL, this handler will be called for all closed connections 
     * - Parameter ConnectionClosedHandler:  The callback to be fired when we an open connection has been closed
     * - Returns:  A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyPeerConnectionClosed(
        LocalUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?,
        ConnectionClosedHandler: @escaping (SwiftEOS_P2P_OnRemoteConnectionClosedInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_P2P_OnRemoteConnectionClosedInfo> {
        try ____AddNotifyPeerConnectionClosed(
            .init(
                LocalUserId: LocalUserId,
                SocketId: SocketId
            ),
            ConnectionClosedHandler
        )
    }

    /**
     * Listen for incoming connection requests on a particular Socket ID, or optionally all Socket IDs. The bound function
     * will only be called if the connection has not already been accepted.
     * 
     * - Parameter LocalUserId:  The Product User ID of the user who is listening for incoming connection requests 
     * - Parameter SocketId:  The optional socket ID to listen for, used as a filter for incoming connection requests; If NULL, incoming connection requests will not be filtered 
     * - Parameter ConnectionRequestHandler:  The callback to be fired when we receive a connection request
     * - Returns:  A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyPeerConnectionRequest(
        LocalUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?,
        ConnectionRequestHandler: @escaping (SwiftEOS_P2P_OnIncomingConnectionRequestInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_P2P_OnIncomingConnectionRequestInfo> {
        try ____AddNotifyPeerConnectionRequest(
            .init(
                LocalUserId: LocalUserId,
                SocketId: SocketId
            ),
            ConnectionRequestHandler
        )
    }

    /**
     * Stop accepting new connections from a specific peer and close any open connections.
     * 
     * - Parameter LocalUserId:  The Product User ID of the local user who would like to close a previously accepted connection (or decline a pending invite) 
     * - Parameter RemoteUserId:  The Product User ID of the remote user to disconnect from (or to reject a pending invite from) 
     * - Parameter SocketId:  The socket ID of the connection to close (or optionally NULL to not accept any connection requests from the Remote User) 
     * - Returns:  EOS_EResult::EOS_Success - if the provided data is valid
     *         EOS_EResult::EOS_InvalidParameters - if the provided data is invalid
     */
    public func CloseConnection(
        LocalUserId: EOS_ProductUserId?,
        RemoteUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?
    ) throws {
        try ____CloseConnection(.init(
                LocalUserId: LocalUserId,
                RemoteUserId: RemoteUserId,
                SocketId: SocketId
            ))
    }

    /**
     * Close any open Connections for a specific Peer Connection ID.
     * 
     * - Parameter LocalUserId:  The Product User ID of the local user who would like to close all connections that use a particular socket ID 
     * - Parameter SocketId:  The socket ID of the connections to close 
     * - Returns:  EOS_EResult::EOS_Success - if the provided data is valid
     *         EOS_EResult::EOS_InvalidParameters - if the provided data is invalid
     */
    public func CloseConnections(
        LocalUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?
    ) throws {
        try ____CloseConnections(.init(
                LocalUserId: LocalUserId,
                SocketId: SocketId
            ))
    }

    /**
     * Get our last-queried NAT-type, if it has been successfully queried.
     * 
     * - Returns:  EOS_EResult::EOS_Success - if we have cached data
     *         EOS_EResult::EOS_NotFound - If we do not have queried data cached
     */
    public func GetNATType() throws -> EOS_ENATType? {
        try ____GetNATType()
    }

    /**
     * Gets the size of the packet that will be returned by ReceivePacket for a particular user, if there is any available
     * packets to be retrieved.
     * 
     * - Parameter LocalUserId:  The Product User ID of the local user who is receiving the packet 
     * - Parameter RequestedChannel:  An optional channel to request the data for. If NULL, we're retrieving the size of the next packet on any channel. 
     * - Returns:  EOS_EResult::EOS_Success - If OutPacketSizeBytes was successfully set and there is data to be received
     *         EOS_EResult::EOS_InvalidParameters - If input was invalid
     *         EOS_EResult::EOS_NotFound  - If there are no packets available for the requesting user
     */
    public func GetNextReceivedPacketSize(
        LocalUserId: EOS_ProductUserId?,
        RequestedChannel: UInt8?
    ) throws -> Int? {
        try ____GetNextReceivedPacketSize(.init(
                LocalUserId: LocalUserId,
                RequestedChannel: RequestedChannel
            ))
    }

    /**
     * Gets the current cached information related to the incoming and outgoing packet queues.
     * 
     * - Returns:  EOS_EResult::EOS_Success - if the input options were valid
     *         EOS_EResult::EOS_InvalidParameters - if the input was invalid in some way
     */
    public func GetPacketQueueInfo() throws -> _tagEOS_P2P_PacketQueueInfo? {
        try ____GetPacketQueueInfo()
    }

    /**
     * Get the current chosen port and the amount of other ports to try above the chosen port if the chosen port is unavailable.
     * 
     * - Parameter OutPort:  The port that will be tried first
     * - Parameter OutNumAdditionalPortsToTry:  The amount of ports to try above the value in OutPort, if OutPort is unavailable
     * - Returns:  EOS_EResult::EOS_Success - if the input options were valid
     *         EOS_EResult::EOS_InvalidParameters - if the input was invalid in some way
     */
    public func GetPortRange(
        OutPort: inout UInt16?,
        OutNumAdditionalPortsToTry: inout UInt16?
    ) throws {
        try ____GetPortRange(
            &OutPort,
            &OutNumAdditionalPortsToTry
        )
    }

    /**
     * Get the current relay control setting.
     * 
     * - Returns:  EOS_EResult::EOS_Success - if the input was valid
     *         EOS_EResult::EOS_InvalidParameters - if the input was invalid in some way
     */
    public func GetRelayControl() throws -> EOS_ERelayControl? {
        try ____GetRelayControl()
    }

    /**
     * Query the current NAT-type of our connection.
     * 
     * - Parameter CompletionDelegate:  The callback to be fired when we finish querying our NAT type
     */
    public func QueryNATType(
        CompletionDelegate: @escaping (SwiftEOS_P2P_OnQueryNATTypeCompleteInfo) -> Void
    ) throws {
        try ____QueryNATType(CompletionDelegate)
    }

    /**
     * Receive the next packet for the local user, and information associated with this packet, if it exists.
     * 
     * - Parameter LocalUserId:  The Product User ID of the user who is receiving the packet 
     * - Parameter MaxDataSizeBytes:  The maximum amount of data in bytes that can be safely copied to OutData in the function call 
     * - Parameter RequestedChannel:  An optional channel to request the data for. If NULL, we're retrieving the next packet on any channel 
     * - Parameter OutPeerId:  The Remote User who sent data. Only set if there was a packet to receive.
     * - Parameter OutSocketId:  The Socket ID of the data that was sent. Only set if there was a packet to receive.
     * - Parameter OutChannel:  The channel the data was sent on. Only set if there was a packet to receive.
     * - Parameter OutData:  Buffer to store the data being received. Must be at least EOS_P2P_GetNextReceivedPacketSize in length or data will be truncated
     * - Returns:  EOS_EResult::EOS_Success - If the packet was received successfully
     *         EOS_EResult::EOS_InvalidParameters - If input was invalid
     *         EOS_EResult::EOS_NotFound - If there are no packets available for the requesting user
     */
    public func ReceivePacket(
        LocalUserId: EOS_ProductUserId?,
        MaxDataSizeBytes: Int,
        RequestedChannel: UInt8?,
        OutPeerId: inout EOS_ProductUserId?,
        OutSocketId: inout SwiftEOS_P2P_SocketId?,
        OutChannel: inout UInt8?,
        OutData: inout [UInt8]?
    ) throws {
        try ____ReceivePacket(
            .init(
                LocalUserId: LocalUserId,
                MaxDataSizeBytes: MaxDataSizeBytes,
                RequestedChannel: RequestedChannel
            ),
            &OutPeerId,
            &OutSocketId,
            &OutChannel,
            &OutData
        )
    }

    /**
     * Send a packet to a peer at the specified address. If there is already an open connection to this peer, it will be
     * sent immediately. If there is no open connection, an attempt to connect to the peer will be made. An EOS_Success
     * result only means the data was accepted to be sent, not that it has been successfully delivered to the peer.
     * 
     * - Parameter LocalUserId:  The Product User ID of the local user who is sending this packet 
     * - Parameter RemoteUserId:  The Product User ID of the Peer you would like to send a packet to 
     * - Parameter SocketId:  The socket ID for data you are sending in this packet 
     * - Parameter Channel:  Channel associated with this data 
     * - Parameter Data:  The data to be sent to the RemoteUser 
     * 
     * - Note: ``EOS/_tagEOS_P2P_SendPacketOptions/DataLengthBytes``:
     * The size of the data to be sent to the RemoteUser 
     * - Parameter bAllowDelayedDelivery:  If false and we do not already have an established connection to the peer, this data will be dropped 
     * - Parameter Reliability:  Setting to control the delivery reliability of this packet 
     * - Returns:  EOS_EResult::EOS_Success           - If packet was queued to be sent successfully
     *         EOS_EResult::EOS_InvalidParameters - If input was invalid
     *         EOS_EResult::EOS_LimitExceeded     - If amount of data being sent is too large, or the outgoing packet queue was full
     */
    public func SendPacket(
        LocalUserId: EOS_ProductUserId?,
        RemoteUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?,
        Channel: UInt8,
        Data: [UInt8]?,
        bAllowDelayedDelivery: Bool,
        Reliability: EOS_EPacketReliability
    ) throws {
        try ____SendPacket(.init(
                LocalUserId: LocalUserId,
                RemoteUserId: RemoteUserId,
                SocketId: SocketId,
                Channel: Channel,
                Data: Data,
                bAllowDelayedDelivery: bAllowDelayedDelivery,
                Reliability: Reliability
            ))
    }

    /**
     * Sets the maximum packet queue sizes that packets waiting to be sent or received can use. If the packet queue
     * size is made smaller than the current queue size while there are packets in the queue that would push this
     * packet size over, existing packets are kept but new packets may not be added to the full queue until enough
     * packets are sent or received.
     * 
     * - Parameter IncomingPacketQueueMaxSizeBytes:  The ideal maximum amount of bytes the Incoming packet queue can consume 
     * - Parameter OutgoingPacketQueueMaxSizeBytes:  The ideal maximum amount of bytes the Outgoing packet queue can consume 
     * - Returns:  EOS_EResult::EOS_Success - if the input options were valid
     *         EOS_EResult::EOS_InvalidParameters - if the input was invalid in some way
     */
    public func SetPacketQueueSize(
        IncomingPacketQueueMaxSizeBytes: UInt64,
        OutgoingPacketQueueMaxSizeBytes: UInt64
    ) throws {
        try ____SetPacketQueueSize(.init(
                IncomingPacketQueueMaxSizeBytes: IncomingPacketQueueMaxSizeBytes,
                OutgoingPacketQueueMaxSizeBytes: OutgoingPacketQueueMaxSizeBytes
            ))
    }

    /**
     * Set configuration options related to network ports.
     * 
     * - Parameter Port:  The ideal port to use for P2P traffic. The default value is 7777. If set to 0, the OS will choose a port. If set to 0, MaxAdditionalPortsToTry must be set to 0. 
     * - Parameter MaxAdditionalPortsToTry:  The maximum amount of additional ports to try if Port is unavailable. Ports will be tried from Port to Port + MaxAdditionalPortsToTry
     * inclusive, until one is available or we run out of ports. If no ports are available, P2P connections will fail. The default value is 99.
     * - Returns:  EOS_EResult::EOS_Success - if the options were set successfully
     *         EOS_EResult::EOS_InvalidParameters - if the options are invalid in some way
     */
    public func SetPortRange(
        Port: UInt16,
        MaxAdditionalPortsToTry: UInt16
    ) throws {
        try ____SetPortRange(.init(
                Port: Port,
                MaxAdditionalPortsToTry: MaxAdditionalPortsToTry
            ))
    }

    /**
     * Set how relay servers are to be used. This setting does not immediately apply to existing connections, but may apply to existing
     * connections if the connection requires renegotiation.
     * 
     * - Parameter RelayControl:  The requested level of relay servers for P2P connections. This setting is only applied to new P2P connections, or when existing P2P connections
     * reconnect during a temporary connectivity outage. Peers with an incompatible setting to the local setting will not be able to connnect.
     * - Returns:  EOS_EResult::EOS_Success - if the options were set successfully
     *         EOS_EResult::EOS_InvalidParameters - if the options are invalid in some way
     */
    public func SetRelayControl(
        RelayControl: EOS_ERelayControl
    ) throws {
        try ____SetRelayControl(.init(RelayControl: RelayControl))
    }
}

extension SwiftEOS_P2P_Actor {

    /**
     * Accept connections from a specific peer. If this peer has not attempted to connect yet, when they do, they will automatically be accepted.
     * 
     * - Parameter Options:  Information about who would like to accept a connection, and which connection
     * - Returns:  EOS_EResult::EOS_Success - if the provided data is valid
     *         EOS_EResult::EOS_InvalidParameters - if the provided data is invalid
     */
    private func ____AcceptConnection(
        _ Options: SwiftEOS_P2P_AcceptConnectionOptions
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
     * - Parameter IncomingPacketQueueFullHandler:  The callback to be fired when the incoming packet queue is full
     * - Returns:  A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    private func ____AddNotifyIncomingPacketQueueFull(
        _ IncomingPacketQueueFullHandler: @escaping (SwiftEOS_P2P_OnIncomingPacketQueueFullInfo) -> Void
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
     * - Parameter ConnectionClosedHandler:  The callback to be fired when we an open connection has been closed
     * - Returns:  A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    private func ____AddNotifyPeerConnectionClosed(
        _ Options: SwiftEOS_P2P_AddNotifyPeerConnectionClosedOptions,
        _ ConnectionClosedHandler: @escaping (SwiftEOS_P2P_OnRemoteConnectionClosedInfo) -> Void
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
     * - Parameter ConnectionRequestHandler:  The callback to be fired when we receive a connection request
     * - Returns:  A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    private func ____AddNotifyPeerConnectionRequest(
        _ Options: SwiftEOS_P2P_AddNotifyPeerConnectionRequestOptions,
        _ ConnectionRequestHandler: @escaping (SwiftEOS_P2P_OnIncomingConnectionRequestInfo) -> Void
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
     * - Returns:  EOS_EResult::EOS_Success - if the provided data is valid
     *         EOS_EResult::EOS_InvalidParameters - if the provided data is invalid
     */
    private func ____CloseConnection(
        _ Options: SwiftEOS_P2P_CloseConnectionOptions
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
     * - Returns:  EOS_EResult::EOS_Success - if the provided data is valid
     *         EOS_EResult::EOS_InvalidParameters - if the provided data is invalid
     */
    private func ____CloseConnections(
        _ Options: SwiftEOS_P2P_CloseConnectionsOptions
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
     * - Returns:  EOS_EResult::EOS_Success - if we have cached data
     *         EOS_EResult::EOS_NotFound - If we do not have queried data cached
     */
    private func ____GetNATType() throws -> EOS_ENATType? {
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
     * - Returns:  EOS_EResult::EOS_Success - If OutPacketSizeBytes was successfully set and there is data to be received
     *         EOS_EResult::EOS_InvalidParameters - If input was invalid
     *         EOS_EResult::EOS_NotFound  - If there are no packets available for the requesting user
     */
    private func ____GetNextReceivedPacketSize(
        _ Options: SwiftEOS_P2P_GetNextReceivedPacketSizeOptions
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
     * - Returns:  EOS_EResult::EOS_Success - if the input options were valid
     *         EOS_EResult::EOS_InvalidParameters - if the input was invalid in some way
     */
    private func ____GetPacketQueueInfo() throws -> _tagEOS_P2P_PacketQueueInfo? {
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
     * - Parameter OutPort:  The port that will be tried first
     * - Parameter OutNumAdditionalPortsToTry:  The amount of ports to try above the value in OutPort, if OutPort is unavailable
     * - Returns:  EOS_EResult::EOS_Success - if the input options were valid
     *         EOS_EResult::EOS_InvalidParameters - if the input was invalid in some way
     */
    private func ____GetPortRange(
        _ OutPort: inout UInt16?,
        _ OutNumAdditionalPortsToTry: inout UInt16?
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
     * - Returns:  EOS_EResult::EOS_Success - if the input was valid
     *         EOS_EResult::EOS_InvalidParameters - if the input was invalid in some way
     */
    private func ____GetRelayControl() throws -> EOS_ERelayControl? {
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
     * - Parameter CompletionDelegate:  The callback to be fired when we finish querying our NAT type
     */
    private func ____QueryNATType(
        _ CompletionDelegate: @escaping (SwiftEOS_P2P_OnQueryNATTypeCompleteInfo) -> Void
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
     * - Returns:  EOS_EResult::EOS_Success - If the packet was received successfully
     *         EOS_EResult::EOS_InvalidParameters - If input was invalid
     *         EOS_EResult::EOS_NotFound - If there are no packets available for the requesting user
     */
    private func ____ReceivePacket(
        _ Options: SwiftEOS_P2P_ReceivePacketOptions,
        _ OutPeerId: inout EOS_ProductUserId?,
        _ OutSocketId: inout SwiftEOS_P2P_SocketId?,
        _ OutChannel: inout UInt8?,
        _ OutData: inout [UInt8]?
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
     * - Returns:  EOS_EResult::EOS_Success           - If packet was queued to be sent successfully
     *         EOS_EResult::EOS_InvalidParameters - If input was invalid
     *         EOS_EResult::EOS_LimitExceeded     - If amount of data being sent is too large, or the outgoing packet queue was full
     */
    private func ____SendPacket(
        _ Options: SwiftEOS_P2P_SendPacketOptions
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
     * - Returns:  EOS_EResult::EOS_Success - if the input options were valid
     *         EOS_EResult::EOS_InvalidParameters - if the input was invalid in some way
     */
    private func ____SetPacketQueueSize(
        _ Options: SwiftEOS_P2P_SetPacketQueueSizeOptions
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
     * - Returns:  EOS_EResult::EOS_Success - if the options were set successfully
     *         EOS_EResult::EOS_InvalidParameters - if the options are invalid in some way
     */
    private func ____SetPortRange(
        _ Options: SwiftEOS_P2P_SetPortRangeOptions
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
     * - Returns:  EOS_EResult::EOS_Success - if the options were set successfully
     *         EOS_EResult::EOS_InvalidParameters - if the options are invalid in some way
     */
    private func ____SetRelayControl(
        _ Options: SwiftEOS_P2P_SetRelayControlOptions
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
