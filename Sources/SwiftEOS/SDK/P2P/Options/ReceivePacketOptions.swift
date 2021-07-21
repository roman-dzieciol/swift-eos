import Foundation
import EOSSDK


/** Structure containing information about who would like to receive a packet, and how much data can be stored safely. */
public struct SwiftEOS_P2P_ReceivePacketOptions {

    /** API Version: Set this to `EOS_P2P_RECEIVEPACKET_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the user who is receiving the packet */
    public let LocalUserId: EOS_ProductUserId?

    /** The maximum amount of data in bytes that can be safely copied to OutData in the function call */
    public let MaxDataSizeBytes: Int

    /** An optional channel to request the data for. If NULL, we're retrieving the next packet on any channel */
    public let RequestedChannel: UInt8?

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_P2P_RECEIVEPACKET_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the user who is receiving the packet
    - Parameter MaxDataSizeBytes: The maximum amount of data in bytes that can be safely copied to OutData in the function call
    - Parameter RequestedChannel: An optional channel to request the data for. If NULL, we're retrieving the next packet on any channel
    */
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
