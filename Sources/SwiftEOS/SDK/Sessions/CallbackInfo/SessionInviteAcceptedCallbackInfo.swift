import Foundation
import EOSSDK

/** Output parameters for the `EOS_Sessions_OnSessionInviteAcceptedCallback` function. */
public struct SwiftEOS_Sessions_SessionInviteAcceptedCallbackInfo {

    /** Session ID that should be used for joining */
    public let SessionId: String?

    /** The Product User ID of the user who accepted the invitation */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the user who sent the invitation */
    public let TargetUserId: EOS_ProductUserId?

    /** Invite ID that was accepted */
    public let InviteId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_SessionInviteAcceptedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.SessionId = String(cString: sdkObject.SessionId)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.InviteId = String(cString: sdkObject.InviteId)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_SessionInviteAcceptedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter SessionId: Session ID that should be used for joining
    - Parameter LocalUserId: The Product User ID of the user who accepted the invitation
    - Parameter TargetUserId: The Product User ID of the user who sent the invitation
    - Parameter InviteId: Invite ID that was accepted
    */
    public init(
        SessionId: String?,
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?,
        InviteId: String?
    ) {
        self.SessionId = SessionId
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
        self.InviteId = InviteId
    }
}
