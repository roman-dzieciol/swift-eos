import Foundation
import EOSSDK


/** Output parameters for the `EOS_Sessions_OnSessionInviteReceivedCallback` function. */
public struct SwiftEOS_Sessions_SessionInviteReceivedCallbackInfo {

    /** The Product User ID of the user who received the invite */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the user who sent the invitation */
    public let TargetUserId: EOS_ProductUserId?

    /** Invite ID used to retrieve the actual session details */
    public let InviteId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_SessionInviteReceivedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.InviteId = stringFromOptionalCStringPointer(sdkObject.InviteId)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_SessionInviteReceivedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter LocalUserId: The Product User ID of the user who received the invite
    - Parameter TargetUserId: The Product User ID of the user who sent the invitation
    - Parameter InviteId: Invite ID used to retrieve the actual session details
    */
    public init(
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?,
        InviteId: String?
    ) {
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
        self.InviteId = InviteId
    }
}
