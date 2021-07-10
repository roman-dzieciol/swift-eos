import Foundation
import EOSSDK
public struct SwiftEOS_Lobby_RTCRoomConnectionChangedCallbackInfo {

    /** The ID of the lobby which had a RTC Room connection state change */
    public let LobbyId: String?

    /** The Product User ID of the local user who is in the lobby and registered for notifications */
    public let LocalUserId: EOS_ProductUserId?

    /** The new connection state of the room */
    public let bIsConnected: Bool

    /**
    If bIsConnected is EOS_FALSE, this result will be the reason we were disconnected.
    EOS_Success: The room was left locally. This may be because: the associated lobby was Left or Destroyed, the connection to the lobby was interrupted, or because the SDK is being shutdown. If the lobby connection returns (lobby did not permanently go away), we will reconnect.
    EOS_NoConnection: There was a network issue connecting to the server. We will attempt to reconnect soon.
    EOS_RTC_UserKicked: The user has been kicked by the server. We will not reconnect.
    EOS_RTC_UserBanned: The user has been banned by the server. We will not reconnect.
    EOS_ServiceFailure: A known error occurred during interaction with the server. We will attempt to reconnect soon.
    EOS_UnexpectedError: Unexpected error. We will attempt to reconnect soon.
    */
    public let DisconnectReason: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_RTCRoomConnectionChangedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LobbyId = String(cString: sdkObject.LobbyId)
        self.LocalUserId = sdkObject.LocalUserId
        self.bIsConnected = try swiftBoolFromEosBool(sdkObject.bIsConnected)
        self.DisconnectReason = sdkObject.DisconnectReason
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_RTCRoomConnectionChangedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter LobbyId: The ID of the lobby which had a RTC Room connection state change
    - Parameter LocalUserId: The Product User ID of the local user who is in the lobby and registered for notifications
    - Parameter bIsConnected: The new connection state of the room
    - Parameter DisconnectReason: If bIsConnected is EOS_FALSE, this result will be the reason we were disconnected.
    EOS_Success: The room was left locally. This may be because: the associated lobby was Left or Destroyed, the connection to the lobby was interrupted, or because the SDK is being shutdown. If the lobby connection returns (lobby did not permanently go away), we will reconnect.
    EOS_NoConnection: There was a network issue connecting to the server. We will attempt to reconnect soon.
    EOS_RTC_UserKicked: The user has been kicked by the server. We will not reconnect.
    EOS_RTC_UserBanned: The user has been banned by the server. We will not reconnect.
    EOS_ServiceFailure: A known error occurred during interaction with the server. We will attempt to reconnect soon.
    EOS_UnexpectedError: Unexpected error. We will attempt to reconnect soon.
    */
    public init(
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?,
        bIsConnected: Bool,
        DisconnectReason: EOS_EResult
    ) {
        self.LobbyId = LobbyId
        self.LocalUserId = LocalUserId
        self.bIsConnected = bIsConnected
        self.DisconnectReason = DisconnectReason
    }
}
