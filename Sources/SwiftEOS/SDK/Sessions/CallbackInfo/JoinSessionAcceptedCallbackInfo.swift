import Foundation
import EOSSDK

/** Output parameters for the EOS_Sessions_OnJoinSessionAcceptedCallback function. */
public struct SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo {

    /** The Product User ID for the user who initialized the game  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * 
     * The UI Event associated with this Join Game event.
     * This should be used with EOS_Sessions_CopySessionHandleByUiEventId to get a handle to be used
     * when calling EOS_Sessions_JoinSession.
     */
    public let UiEventId: EOS_UI_EventId

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_JoinSessionAcceptedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.UiEventId = sdkObject.UiEventId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_JoinSessionAcceptedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /** Memberwise initializer */
    public init(
        LocalUserId: EOS_ProductUserId?,
        UiEventId: EOS_UI_EventId
    ) {
        self.LocalUserId = LocalUserId
        self.UiEventId = UiEventId
    }
}
