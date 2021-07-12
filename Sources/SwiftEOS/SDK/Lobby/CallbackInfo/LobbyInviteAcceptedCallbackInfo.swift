import Foundation
import EOSSDK

/** Output parameters for the `EOS_Lobby_OnLobbyInviteAcceptedCallback` Function. */
public struct SwiftEOS_Lobby_LobbyInviteAcceptedCallbackInfo {

    /** The invite ID */
    public let InviteId: String?

    /** The Product User ID of the local user who received the invitation */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the user who sent the invitation */
    public let TargetUserId: EOS_ProductUserId?

    /** Lobby ID that the user has been invited to */
    public let LobbyId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_LobbyInviteAcceptedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.InviteId = stringFromOptionalCStringPointer(sdkObject.InviteId)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.LobbyId = stringFromOptionalCStringPointer(sdkObject.LobbyId)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_LobbyInviteAcceptedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter InviteId: The invite ID
    - Parameter LocalUserId: The Product User ID of the local user who received the invitation
    - Parameter TargetUserId: The Product User ID of the user who sent the invitation
    - Parameter LobbyId: Lobby ID that the user has been invited to
    */
    public init(
        InviteId: String?,
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?,
        LobbyId: String?
    ) {
        self.InviteId = InviteId
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
        self.LobbyId = LobbyId
    }
}
