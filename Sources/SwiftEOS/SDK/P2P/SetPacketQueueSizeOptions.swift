import Foundation
import EOSSDK

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
