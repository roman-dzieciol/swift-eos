import Foundation
import EOSSDK

/** Output parameters for the EOS_Lobby_OnLobbyInviteReceivedCallback Function. */
public struct SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfo {

    /** The ID of the invitation  */
    public let InviteId: String?

    /** The Product User ID of the local user who received the invitation  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the user who sent the invitation  */
    public let TargetUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_LobbyInviteReceivedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.InviteId = String(cString: sdkObject.InviteId)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_LobbyInviteReceivedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /** Memberwise initializer */
    public init(
        InviteId: String?,
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.InviteId = InviteId
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}
