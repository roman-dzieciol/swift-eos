import Foundation
import EOSSDK


/** Output parameters for the `EOS_Lobby_OnJoinLobbyAcceptedCallback` Function. */
public struct SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfo {

    /** The Product User ID of the local user who is joining */
    public let LocalUserId: EOS_ProductUserId?

    /**
    The UI Event associated with this Join Game event.
    This should be used with `EOS_Lobby_CopyLobbyDetailsHandleByUiEventId` to get a handle to be used
    when calling `EOS_Lobby_JoinLobby`.
    */
    public let UiEventId: EOS_UI_EventId

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_JoinLobbyAcceptedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.UiEventId = sdkObject.UiEventId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_JoinLobbyAcceptedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter LocalUserId: The Product User ID of the local user who is joining
    - Parameter UiEventId: The UI Event associated with this Join Game event.
    This should be used with `EOS_Lobby_CopyLobbyDetailsHandleByUiEventId` to get a handle to be used
    when calling `EOS_Lobby_JoinLobby`.
    */
    public init(
        LocalUserId: EOS_ProductUserId?,
        UiEventId: EOS_UI_EventId
    ) {
        self.LocalUserId = LocalUserId
        self.UiEventId = UiEventId
    }
}
