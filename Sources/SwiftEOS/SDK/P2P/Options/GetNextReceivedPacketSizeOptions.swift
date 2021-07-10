import Foundation
import EOSSDK

/** Structure containing information about who would like to receive a packet. */
public struct SwiftEOS_P2P_GetNextReceivedPacketSizeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_GETNEXTRECEIVEDPACKETSIZE_API_LATEST. */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who is receiving the packet */
    public let LocalUserId: EOS_ProductUserId?

    /** An optional channel to request the data for. If NULL, we're retrieving the size of the next packet on any channel. */
    public let RequestedChannel: UInt8?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_P2P_GETNEXTRECEIVEDPACKETSIZE_API_LATEST.
    - Parameter LocalUserId: The Product User ID of the local user who is receiving the packet
    - Parameter RequestedChannel: An optional channel to request the data for. If NULL, we're retrieving the size of the next packet on any channel.
    */
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
