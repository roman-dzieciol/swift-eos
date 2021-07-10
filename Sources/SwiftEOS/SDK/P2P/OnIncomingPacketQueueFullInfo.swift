import Foundation
import EOSSDK

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

    /**
     * Memberwise initializer
     * - Parameter PacketQueueMaxSizeBytes:  The maximum size in bytes the incoming packet queue is allowed to use 
     * - Parameter PacketQueueCurrentSizeBytes:  The current size in bytes the incoming packet queue is currently using 
     * - Parameter OverflowPacketLocalUserId:  The Product User ID of the local user who is receiving the packet that would overflow the queue 
     * - Parameter OverflowPacketChannel:  The channel the incoming packet is for 
     * - Parameter OverflowPacketSizeBytes:  The size in bytes of the incoming packet (and related metadata) that would overflow the queue 
     */
    public init(
        PacketQueueMaxSizeBytes: UInt64,
        PacketQueueCurrentSizeBytes: UInt64,
        OverflowPacketLocalUserId: EOS_ProductUserId?,
        OverflowPacketChannel: UInt8,
        OverflowPacketSizeBytes: Int
    ) {
        self.PacketQueueMaxSizeBytes = PacketQueueMaxSizeBytes
        self.PacketQueueCurrentSizeBytes = PacketQueueCurrentSizeBytes
        self.OverflowPacketLocalUserId = OverflowPacketLocalUserId
        self.OverflowPacketChannel = OverflowPacketChannel
        self.OverflowPacketSizeBytes = OverflowPacketSizeBytes
    }
}
