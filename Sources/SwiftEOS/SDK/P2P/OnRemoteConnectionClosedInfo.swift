import Foundation
import EOSSDK


/** Structure containing information about an connection request that is being closed. */
public struct SwiftEOS_P2P_OnRemoteConnectionClosedInfo {

    /** The local user who is being notified of a connection being closed */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the remote user who this connection was with */
    public let RemoteUserId: EOS_ProductUserId?

    /** The socket ID of the connection being closed */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /** The reason the connection was closed (if known) */
    public let Reason: EOS_EConnectionClosedReason

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_OnRemoteConnectionClosedInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.RemoteUserId = sdkObject.RemoteUserId
        self.SocketId = try SwiftEOS_P2P_SocketId.init(sdkObject: sdkObject.SocketId?.pointee)
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

    /**
    Memberwise initializer

    - Parameter LocalUserId: The local user who is being notified of a connection being closed
    - Parameter RemoteUserId: The Product User ID of the remote user who this connection was with
    - Parameter SocketId: The socket ID of the connection being closed
    - Parameter Reason: The reason the connection was closed (if known)
    */
    public init(
        LocalUserId: EOS_ProductUserId?,
        RemoteUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?,
        Reason: EOS_EConnectionClosedReason
    ) {
        self.LocalUserId = LocalUserId
        self.RemoteUserId = RemoteUserId
        self.SocketId = SocketId
        self.Reason = Reason
    }
}
