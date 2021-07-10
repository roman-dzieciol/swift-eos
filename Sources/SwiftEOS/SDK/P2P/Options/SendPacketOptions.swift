import Foundation
import EOSSDK

/** Structure containing information about the data being sent and to which player */
public struct SwiftEOS_P2P_SendPacketOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_SENDPACKET_API_LATEST. */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who is sending this packet */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the Peer you would like to send a packet to */
    public let RemoteUserId: EOS_ProductUserId?

    /** The socket ID for data you are sending in this packet */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /** Channel associated with this data */
    public let Channel: UInt8

    /**
    The data to be sent to the RemoteUser

    - Note: ``EOS/_tagEOS_P2P_SendPacketOptions/DataLengthBytes``:
    The size of the data to be sent to the RemoteUser
    */
    public let Data: [UInt8]?

    /** If false and we do not already have an established connection to the peer, this data will be dropped */
    public let bAllowDelayedDelivery: Bool

    /** Setting to control the delivery reliability of this packet */
    public let Reliability: EOS_EPacketReliability

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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
            DataLengthBytes: try safeNumericCast(exactly: Data?.count ?? .zero),
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
        self.Data = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.Data,
                count: try safeNumericCast(exactly: sdkObject.DataLengthBytes)
            ))
        self.bAllowDelayedDelivery = try swiftBoolFromEosBool(sdkObject.bAllowDelayedDelivery)
        self.Reliability = sdkObject.Reliability
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_P2P_SENDPACKET_API_LATEST.
    - Parameter LocalUserId: The Product User ID of the local user who is sending this packet
    - Parameter RemoteUserId: The Product User ID of the Peer you would like to send a packet to
    - Parameter SocketId: The socket ID for data you are sending in this packet
    - Parameter Channel: Channel associated with this data
    - Parameter Data: The data to be sent to the RemoteUser
    - Note: ``EOS/_tagEOS_P2P_SendPacketOptions/DataLengthBytes``:
    The size of the data to be sent to the RemoteUser
    - Parameter bAllowDelayedDelivery: If false and we do not already have an established connection to the peer, this data will be dropped
    - Parameter Reliability: Setting to control the delivery reliability of this packet
    */
    public init(
        ApiVersion: Int32 = EOS_P2P_SENDPACKET_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RemoteUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?,
        Channel: UInt8,
        Data: [UInt8]?,
        bAllowDelayedDelivery: Bool,
        Reliability: EOS_EPacketReliability
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RemoteUserId = RemoteUserId
        self.SocketId = SocketId
        self.Channel = Channel
        self.Data = Data
        self.bAllowDelayedDelivery = bAllowDelayedDelivery
        self.Reliability = Reliability
    }
}
