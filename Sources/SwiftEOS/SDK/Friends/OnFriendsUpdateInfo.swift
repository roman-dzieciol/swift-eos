import Foundation
import EOSSDK

/** Structure containing information about a friend status update. */
public struct SwiftEOS_Friends_OnFriendsUpdateInfo {

    /** The Epic Online Services Account ID of the local user who is receiving the update  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user whose status is being updated.  */
    public let TargetUserId: EOS_EpicAccountId?

    /** The previous status of the user.  */
    public let PreviousStatus: EOS_EFriendsStatus

    /** The current status of the user.  */
    public let CurrentStatus: EOS_EFriendsStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_OnFriendsUpdateInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.PreviousStatus = sdkObject.PreviousStatus
        self.CurrentStatus = sdkObject.CurrentStatus
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Friends_OnFriendsUpdateInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /** Memberwise initializer */
    public init(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        PreviousStatus: EOS_EFriendsStatus,
        CurrentStatus: EOS_EFriendsStatus
    ) {
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
        self.PreviousStatus = PreviousStatus
        self.CurrentStatus = CurrentStatus
    }
}
