import Foundation
import EOSSDK

/** Structure containing information about who would like to accept a connection, and which connection. */
public struct SwiftEOS_P2P_AcceptConnectionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_ACCEPTCONNECTION_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who is accepting any pending or future connections with RemoteUserId  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the remote user who has either sent a connection request or is expected to in the future  */
    public let RemoteUserId: EOS_ProductUserId?

    /** The socket ID of the connection to accept on  */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_AcceptConnectionOptions {
        try _tagEOS_P2P_AcceptConnectionOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RemoteUserId: RemoteUserId,
            SocketId: try pointerManager.managedPointer(copyingValueOrNilPointer: SocketId?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_AcceptConnectionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RemoteUserId = sdkObject.RemoteUserId
        self.SocketId = try SwiftEOS_P2P_SocketId.init(sdkObject: sdkObject.SocketId.pointee)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_ACCEPTCONNECTION_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RemoteUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RemoteUserId = RemoteUserId
        self.SocketId = SocketId
    }
}

/** Structure containing information about what version of the EOS_P2P_AddNotifyIncomingPacketQueueFull function is supported. */
public struct SwiftEOS_P2P_AddNotifyIncomingPacketQueueFullOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_ADDNOTIFYINCOMINGPACKETQUEUEFULL_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_AddNotifyIncomingPacketQueueFullOptions {
        _tagEOS_P2P_AddNotifyIncomingPacketQueueFullOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_AddNotifyIncomingPacketQueueFullOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_ADDNOTIFYINCOMINGPACKETQUEUEFULL_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Structure containing information about who would like notifications about closed connections, and for which socket. */
public struct SwiftEOS_P2P_AddNotifyPeerConnectionClosedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_ADDNOTIFYPEERCONNECTIONCLOSED_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who would like notifications  */
    public let LocalUserId: EOS_ProductUserId?

    /** The optional socket ID to listen for to be closed. If NULL, this handler will be called for all closed connections  */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_AddNotifyPeerConnectionClosedOptions {
        try _tagEOS_P2P_AddNotifyPeerConnectionClosedOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            SocketId: try pointerManager.managedPointer(copyingValueOrNilPointer: SocketId?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_AddNotifyPeerConnectionClosedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.SocketId = try SwiftEOS_P2P_SocketId.init(sdkObject: sdkObject.SocketId.pointee)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_ADDNOTIFYPEERCONNECTIONCLOSED_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.SocketId = SocketId
    }
}

/** Structure containing information about who would like connection notifications, and about which socket. */
public struct SwiftEOS_P2P_AddNotifyPeerConnectionRequestOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_ADDNOTIFYPEERCONNECTIONREQUEST_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user who is listening for incoming connection requests  */
    public let LocalUserId: EOS_ProductUserId?

    /** The optional socket ID to listen for, used as a filter for incoming connection requests; If NULL, incoming connection requests will not be filtered  */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_AddNotifyPeerConnectionRequestOptions {
        try _tagEOS_P2P_AddNotifyPeerConnectionRequestOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            SocketId: try pointerManager.managedPointer(copyingValueOrNilPointer: SocketId?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_AddNotifyPeerConnectionRequestOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.SocketId = try SwiftEOS_P2P_SocketId.init(sdkObject: sdkObject.SocketId.pointee)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_ADDNOTIFYPEERCONNECTIONREQUEST_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.SocketId = SocketId
    }
}

/** Structure containing information about who would like to close a connection, and which connection. */
public struct SwiftEOS_P2P_CloseConnectionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_CLOSECONNECTION_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who would like to close a previously accepted connection (or decline a pending invite)  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the remote user to disconnect from (or to reject a pending invite from)  */
    public let RemoteUserId: EOS_ProductUserId?

    /** The socket ID of the connection to close (or optionally NULL to not accept any connection requests from the Remote User)  */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_CloseConnectionOptions {
        try _tagEOS_P2P_CloseConnectionOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RemoteUserId: RemoteUserId,
            SocketId: try pointerManager.managedPointer(copyingValueOrNilPointer: SocketId?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_CloseConnectionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RemoteUserId = sdkObject.RemoteUserId
        self.SocketId = try SwiftEOS_P2P_SocketId.init(sdkObject: sdkObject.SocketId.pointee)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_CLOSECONNECTION_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RemoteUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RemoteUserId = RemoteUserId
        self.SocketId = SocketId
    }
}

/** Structure containing information about who would like to close connections, and by what socket ID */
public struct SwiftEOS_P2P_CloseConnectionsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_CLOSECONNECTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who would like to close all connections that use a particular socket ID  */
    public let LocalUserId: EOS_ProductUserId?

    /** The socket ID of the connections to close  */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_CloseConnectionsOptions {
        try _tagEOS_P2P_CloseConnectionsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            SocketId: try pointerManager.managedPointer(copyingValueOrNilPointer: SocketId?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_CloseConnectionsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.SocketId = try SwiftEOS_P2P_SocketId.init(sdkObject: sdkObject.SocketId.pointee)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_CLOSECONNECTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.SocketId = SocketId
    }
}

/** Structure containing information needed to get perviously queried NAT-types */
public struct SwiftEOS_P2P_GetNATTypeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_GETNATTYPE_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_GetNATTypeOptions {
        _tagEOS_P2P_GetNATTypeOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_GetNATTypeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_GETNATTYPE_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Structure containing information about who would like to receive a packet. */
public struct SwiftEOS_P2P_GetNextReceivedPacketSizeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_GETNEXTRECEIVEDPACKETSIZE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who is receiving the packet  */
    public let LocalUserId: EOS_ProductUserId?

    /** An optional channel to request the data for. If NULL, we're retrieving the size of the next packet on any channel.  */
    public let RequestedChannel: UInt8?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_GetNextReceivedPacketSizeOptions {
        _tagEOS_P2P_GetNextReceivedPacketSizeOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RequestedChannel: pointerManager.managedPointer(copyingValueOrNilPointer: RequestedChannel)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_GetNextReceivedPacketSizeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RequestedChannel = sdkObject.RequestedChannel.pointee
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_GETNEXTRECEIVEDPACKETSIZE_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RequestedChannel: UInt8?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RequestedChannel = RequestedChannel
    }
}

/** Structure containing information needed to get the current packet queue information. */
public struct SwiftEOS_P2P_GetPacketQueueInfoOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_GETPACKETQUEUEINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_GetPacketQueueInfoOptions {
        _tagEOS_P2P_GetPacketQueueInfoOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_GetPacketQueueInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_GETPACKETQUEUEINFO_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Structure containing information about getting the configured port range settings. */
public struct SwiftEOS_P2P_GetPortRangeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_GETPORTRANGE_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_GetPortRangeOptions {
        _tagEOS_P2P_GetPortRangeOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_GetPortRangeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_GETPORTRANGE_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Structure containing information about getting the relay control setting. */
public struct SwiftEOS_P2P_GetRelayControlOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_GETRELAYCONTROL_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_GetRelayControlOptions {
        _tagEOS_P2P_GetRelayControlOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_GetRelayControlOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_GETRELAYCONTROL_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Structure containing information about an incoming connection request. */
public struct SwiftEOS_P2P_OnIncomingConnectionRequestInfo {

    /** The Product User ID of the local user who is being requested to open a P2P session with RemoteUserId  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the remote user who requested a peer connection with the local user  */
    public let RemoteUserId: EOS_ProductUserId?

    /** The ID of the socket the Remote User wishes to communicate on  */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_OnIncomingConnectionRequestInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.RemoteUserId = sdkObject.RemoteUserId
        self.SocketId = try SwiftEOS_P2P_SocketId.init(sdkObject: sdkObject.SocketId.pointee)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_P2P_OnIncomingConnectionRequestInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Structure containing information about the packet queue's state and the incoming packet that would overflow the queue */
public struct SwiftEOS_P2P_OnIncomingPacketQueueFullInfo {

    /** The maximum size in bytes the incoming packet queue is allowed to use  */
    public let PacketQueueMaxSizeBytes: UInt64

    /** The current size in bytes the incoming packet queue is currently using  */
    public let PacketQueueCurrentSizeBytes: UInt64

    /** The Product User ID of the local user who is receiving the packet that would overflow the queue  */
    public let OverflowPacketLocalUserId: EOS_ProductUserId?

    /** The channel the incoming packet is for  */
    public let OverflowPacketChannel: UInt8

    /** The size in bytes of the incoming packet (and related metadata) that would overflow the queue  */
    public let OverflowPacketSizeBytes: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_OnIncomingPacketQueueFullInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.PacketQueueMaxSizeBytes = sdkObject.PacketQueueMaxSizeBytes
        self.PacketQueueCurrentSizeBytes = sdkObject.PacketQueueCurrentSizeBytes
        self.OverflowPacketLocalUserId = sdkObject.OverflowPacketLocalUserId
        self.OverflowPacketChannel = sdkObject.OverflowPacketChannel
        self.OverflowPacketSizeBytes = try safeNumericCast(exactly: sdkObject.OverflowPacketSizeBytes)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_P2P_OnIncomingPacketQueueFullInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Structure containing information about the local network NAT type */
public struct SwiftEOS_P2P_OnQueryNATTypeCompleteInfo {

    /** Result code for the operation. EOS_Success is returned for a successful query, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** The queried NAT type  */
    public let NATType: EOS_ENATType

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_OnQueryNATTypeCompleteInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.NATType = sdkObject.NATType
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_P2P_OnQueryNATTypeCompleteInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Structure containing information about an connection request that is being closed. */
public struct SwiftEOS_P2P_OnRemoteConnectionClosedInfo {

    /** The local user who is being notified of a connection being closed  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the remote user who this connection was with  */
    public let RemoteUserId: EOS_ProductUserId?

    /** The socket ID of the connection being closed  */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /** The reason the connection was closed (if known)  */
    public let Reason: EOS_EConnectionClosedReason

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_OnRemoteConnectionClosedInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.RemoteUserId = sdkObject.RemoteUserId
        self.SocketId = try SwiftEOS_P2P_SocketId.init(sdkObject: sdkObject.SocketId.pointee)
        self.Reason = sdkObject.Reason
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_P2P_OnRemoteConnectionClosedInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Structure containing information needed to query NAT-types */
public struct SwiftEOS_P2P_QueryNATTypeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_QUERYNATTYPE_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_QueryNATTypeOptions {
        _tagEOS_P2P_QueryNATTypeOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_QueryNATTypeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_QUERYNATTYPE_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Structure containing information about who would like to receive a packet, and how much data can be stored safely. */
public struct SwiftEOS_P2P_ReceivePacketOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_RECEIVEPACKET_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user who is receiving the packet  */
    public let LocalUserId: EOS_ProductUserId?

    /** The maximum amount of data in bytes that can be safely copied to OutData in the function call  */
    public let MaxDataSizeBytes: Int

    /** An optional channel to request the data for. If NULL, we're retrieving the next packet on any channel  */
    public let RequestedChannel: UInt8?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_ReceivePacketOptions {
        try _tagEOS_P2P_ReceivePacketOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            MaxDataSizeBytes: try safeNumericCast(exactly: MaxDataSizeBytes),
            RequestedChannel: pointerManager.managedPointer(copyingValueOrNilPointer: RequestedChannel)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_ReceivePacketOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.MaxDataSizeBytes = try safeNumericCast(exactly: sdkObject.MaxDataSizeBytes)
        self.RequestedChannel = sdkObject.RequestedChannel.pointee
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_RECEIVEPACKET_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        MaxDataSizeBytes: Int,
        RequestedChannel: UInt8?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.MaxDataSizeBytes = MaxDataSizeBytes
        self.RequestedChannel = RequestedChannel
    }
}

/** Structure containing information about the data being sent and to which player */
public struct SwiftEOS_P2P_SendPacketOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_SENDPACKET_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who is sending this packet  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the Peer you would like to send a packet to  */
    public let RemoteUserId: EOS_ProductUserId?

    /** The socket ID for data you are sending in this packet  */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /** Channel associated with this data  */
    public let Channel: UInt8

    /**
     * The size of the data to be sent to the RemoteUser 
     * - array buffer: Data
     */
    public let DataLengthBytes: Int

    /**
     * The data to be sent to the RemoteUser 
     * - array num: DataLengthBytes
     */
    public let Data: [UInt8]?

    /** If false and we do not already have an established connection to the peer, this data will be dropped  */
    public let bAllowDelayedDelivery: Bool

    /** Setting to control the delivery reliability of this packet  */
    public let Reliability: EOS_EPacketReliability

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_SendPacketOptions {
        try _tagEOS_P2P_SendPacketOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RemoteUserId: RemoteUserId,
            SocketId: try pointerManager.managedPointer(copyingValueOrNilPointer: SocketId?.buildSdkObject(pointerManager: pointerManager)),
            Channel: Channel,
            DataLengthBytes: try safeNumericCast(exactly: DataLengthBytes),
            Data: pointerManager.managedPointerToBuffer(copyingArray: Data),
            bAllowDelayedDelivery: eosBoolFromSwiftBool(bAllowDelayedDelivery),
            Reliability: Reliability
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_SendPacketOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RemoteUserId = sdkObject.RemoteUserId
        self.SocketId = try SwiftEOS_P2P_SocketId.init(sdkObject: sdkObject.SocketId.pointee)
        self.Channel = sdkObject.Channel
        self.DataLengthBytes = try safeNumericCast(exactly: sdkObject.DataLengthBytes)
        self.Data = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.Data,
                count: try safeNumericCast(exactly: sdkObject.DataLengthBytes)
            ))
        self.bAllowDelayedDelivery = try swiftBoolFromEosBool(sdkObject.bAllowDelayedDelivery)
        self.Reliability = sdkObject.Reliability
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_SENDPACKET_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RemoteUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?,
        Channel: UInt8,
        DataLengthBytes: Int,
        Data: [UInt8]?,
        bAllowDelayedDelivery: Bool,
        Reliability: EOS_EPacketReliability
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RemoteUserId = RemoteUserId
        self.SocketId = SocketId
        self.Channel = Channel
        self.DataLengthBytes = DataLengthBytes
        self.Data = Data
        self.bAllowDelayedDelivery = bAllowDelayedDelivery
        self.Reliability = Reliability
    }
}

/** Structure containing information about new packet queue size settings. */
public struct SwiftEOS_P2P_SetPacketQueueSizeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_SETPACKETQUEUESIZE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ideal maximum amount of bytes the Incoming packet queue can consume  */
    public let IncomingPacketQueueMaxSizeBytes: UInt64

    /** The ideal maximum amount of bytes the Outgoing packet queue can consume  */
    public let OutgoingPacketQueueMaxSizeBytes: UInt64

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_SetPacketQueueSizeOptions {
        _tagEOS_P2P_SetPacketQueueSizeOptions(
            ApiVersion: ApiVersion,
            IncomingPacketQueueMaxSizeBytes: IncomingPacketQueueMaxSizeBytes,
            OutgoingPacketQueueMaxSizeBytes: OutgoingPacketQueueMaxSizeBytes
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_SetPacketQueueSizeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.IncomingPacketQueueMaxSizeBytes = sdkObject.IncomingPacketQueueMaxSizeBytes
        self.OutgoingPacketQueueMaxSizeBytes = sdkObject.OutgoingPacketQueueMaxSizeBytes
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_SETPACKETQUEUESIZE_API_LATEST,
        IncomingPacketQueueMaxSizeBytes: UInt64,
        OutgoingPacketQueueMaxSizeBytes: UInt64
    ) {
        self.ApiVersion = ApiVersion
        self.IncomingPacketQueueMaxSizeBytes = IncomingPacketQueueMaxSizeBytes
        self.OutgoingPacketQueueMaxSizeBytes = OutgoingPacketQueueMaxSizeBytes
    }
}

/** Structure containing information about new port range settings. */
public struct SwiftEOS_P2P_SetPortRangeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_SETPORTRANGE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ideal port to use for P2P traffic. The default value is 7777. If set to 0, the OS will choose a port. If set to 0, MaxAdditionalPortsToTry must be set to 0.  */
    public let Port: UInt16

    /**
     * The maximum amount of additional ports to try if Port is unavailable. Ports will be tried from Port to Port + MaxAdditionalPortsToTry
     * inclusive, until one is available or we run out of ports. If no ports are available, P2P connections will fail. The default value is 99.
     */
    public let MaxAdditionalPortsToTry: UInt16

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_SetPortRangeOptions {
        _tagEOS_P2P_SetPortRangeOptions(
            ApiVersion: ApiVersion,
            Port: Port,
            MaxAdditionalPortsToTry: MaxAdditionalPortsToTry
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_SetPortRangeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Port = sdkObject.Port
        self.MaxAdditionalPortsToTry = sdkObject.MaxAdditionalPortsToTry
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_SETPORTRANGE_API_LATEST,
        Port: UInt16,
        MaxAdditionalPortsToTry: UInt16
    ) {
        self.ApiVersion = ApiVersion
        self.Port = Port
        self.MaxAdditionalPortsToTry = MaxAdditionalPortsToTry
    }
}

/** Structure containing information about new relay configurations. */
public struct SwiftEOS_P2P_SetRelayControlOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_SETRELAYCONTROL_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The requested level of relay servers for P2P connections. This setting is only applied to new P2P connections, or when existing P2P connections
     * reconnect during a temporary connectivity outage. Peers with an incompatible setting to the local setting will not be able to connnect.
     */
    public let RelayControl: EOS_ERelayControl

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_SetRelayControlOptions {
        _tagEOS_P2P_SetRelayControlOptions(
            ApiVersion: ApiVersion,
            RelayControl: RelayControl
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_SetRelayControlOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RelayControl = sdkObject.RelayControl
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_SETRELAYCONTROL_API_LATEST,
        RelayControl: EOS_ERelayControl
    ) {
        self.ApiVersion = ApiVersion
        self.RelayControl = RelayControl
    }
}

/**
 * P2P Socket ID
 * The Socket ID contains an application-defined name for the connection between a local person and another peer.
 * When a remote user receives a connection request from you, they will receive this information.  It can be important
 * to only accept connections with a known socket-name and/or from a known user, to prevent leaking of private
 * information, such as a user's IP address. Using the socket name as a secret key can help prevent such leaks. Shared
 * private data, like a private match's Session ID are good candidates for a socket name.
 */
public struct SwiftEOS_P2P_SocketId: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_SOCKETID_API_LATEST.  */
    public let ApiVersion: Int32

    /** A name for the connection. Must be a NULL-terminated string of between 1-32 alpha-numeric characters (A-Z, a-z, 0-9)  */
    public let SocketName: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_SocketId?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SocketName = sdkObject.SocketName
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_SocketId {
        _tagEOS_P2P_SocketId(
            ApiVersion: ApiVersion,
            SocketName: SocketName
        )
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_SOCKETID_API_LATEST,
        SocketName: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
    ) {
        self.ApiVersion = ApiVersion
        self.SocketName = SocketName
    }
}
