import Foundation
import EOSSDK

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
