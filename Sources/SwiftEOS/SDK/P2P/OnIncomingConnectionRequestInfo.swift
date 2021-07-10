import Foundation
import EOSSDK

/** Structure containing information about an incoming connection request. */
public struct SwiftEOS_P2P_OnIncomingConnectionRequestInfo {

    /** The Product User ID of the local user who is being requested to open a P2P session with RemoteUserId */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the remote user who requested a peer connection with the local user */
    public let RemoteUserId: EOS_ProductUserId?

    /** The ID of the socket the Remote User wishes to communicate on */
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

    /**
    Memberwise initializer

    - Parameter LocalUserId: The Product User ID of the local user who is being requested to open a P2P session with RemoteUserId
    - Parameter RemoteUserId: The Product User ID of the remote user who requested a peer connection with the local user
    - Parameter SocketId: The ID of the socket the Remote User wishes to communicate on
    */
    public init(
        LocalUserId: EOS_ProductUserId?,
        RemoteUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?
    ) {
        self.LocalUserId = LocalUserId
        self.RemoteUserId = RemoteUserId
        self.SocketId = SocketId
    }
}
