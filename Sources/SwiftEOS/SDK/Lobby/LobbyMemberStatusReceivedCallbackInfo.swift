import Foundation
import EOSSDK

/** Output parameters for the EOS_Lobby_AddNotifyLobbyMemberStatusReceived function. */
public struct SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo {

    /** The ID of the lobby  */
    public let LobbyId: String?

    /** The Product User ID of the lobby member  */
    public let TargetUserId: EOS_ProductUserId?

    /** Latest status of the user  */
    public let CurrentStatus: EOS_ELobbyMemberStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LobbyId = String(cString: sdkObject.LobbyId)
        self.TargetUserId = sdkObject.TargetUserId
        self.CurrentStatus = sdkObject.CurrentStatus
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /** Memberwise initializer */
    public init(
        LobbyId: String?,
        TargetUserId: EOS_ProductUserId?,
        CurrentStatus: EOS_ELobbyMemberStatus
    ) {
        self.LobbyId = LobbyId
        self.TargetUserId = TargetUserId
        self.CurrentStatus = CurrentStatus
    }
}
