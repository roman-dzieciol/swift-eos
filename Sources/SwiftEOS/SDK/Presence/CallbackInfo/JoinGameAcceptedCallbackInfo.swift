import Foundation
import EOSSDK


/** Output parameters for the `EOS_Presence_OnJoinGameAcceptedCallback` Function. */
public struct SwiftEOS_Presence_JoinGameAcceptedCallbackInfo {

    /**
    The Join Info custom game-data string to use to join the target user.
    Set to a null pointer to delete the value.
    */
    public let JoinInfo: String?

    /** The Epic Online Services Account ID of the user who accepted the invitation */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user who sent the invitation */
    public let TargetUserId: EOS_EpicAccountId?

    /**
    If the value is not `EOS_UI_EVENTID_INVALID` then it must be passed back to the SDK using `EOS_UI_AcknowledgeEventId`.
    This should be done after attempting to join the game and either succeeding or failing to connect.
    This is necessary to allow the Social Overlay UI to manage the `Join` button.
    */
    public let UiEventId: EOS_UI_EventId

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_JoinGameAcceptedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.JoinInfo = stringFromOptionalCStringPointer(sdkObject.JoinInfo)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.UiEventId = sdkObject.UiEventId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Presence_JoinGameAcceptedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter JoinInfo: The Join Info custom game-data string to use to join the target user.
    Set to a null pointer to delete the value.
    - Parameter LocalUserId: The Epic Online Services Account ID of the user who accepted the invitation
    - Parameter TargetUserId: The Epic Online Services Account ID of the user who sent the invitation
    - Parameter UiEventId: If the value is not `EOS_UI_EVENTID_INVALID` then it must be passed back to the SDK using `EOS_UI_AcknowledgeEventId`.
    This should be done after attempting to join the game and either succeeding or failing to connect.
    This is necessary to allow the Social Overlay UI to manage the `Join` button.
    */
    public init(
        JoinInfo: String?,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        UiEventId: EOS_UI_EventId
    ) {
        self.JoinInfo = JoinInfo
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
        self.UiEventId = UiEventId
    }
}
