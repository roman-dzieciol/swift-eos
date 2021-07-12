import Foundation
import EOSSDK

/** Output parameters for the `EOS_Lobby_OnLobbyUpdateReceivedCallback` Function. */
public struct SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfo {

    /** The ID of the lobby */
    public let LobbyId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_LobbyUpdateReceivedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LobbyId = stringFromOptionalCStringPointer(sdkObject.LobbyId)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_LobbyUpdateReceivedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter LobbyId: The ID of the lobby
    */
    public init(
        LobbyId: String?
    ) {
        self.LobbyId = LobbyId
    }
}
