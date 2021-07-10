import Foundation
import EOSSDK

/** Output parameters for the `EOS_Lobby_OnLobbyMemberUpdateReceivedCallback` Function. */
public struct SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo {

    /** The ID of the lobby */
    public let LobbyId: String?

    /** The Product User ID of the lobby member */
    public let TargetUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LobbyId = String(cString: sdkObject.LobbyId)
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter LobbyId: The ID of the lobby
    - Parameter TargetUserId: The Product User ID of the lobby member
    */
    public init(
        LobbyId: String?,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.LobbyId = LobbyId
        self.TargetUserId = TargetUserId
    }
}
