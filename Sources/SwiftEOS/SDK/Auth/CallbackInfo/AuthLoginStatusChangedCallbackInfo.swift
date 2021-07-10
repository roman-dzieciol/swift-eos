import Foundation
import EOSSDK

/** Output parameters for the `EOS_Auth_OnLoginStatusChangedCallback` Function. */
public struct SwiftEOS_Auth_LoginStatusChangedCallbackInfo {

    /** The Epic Online Services Account ID of the local user whose status has changed */
    public let LocalUserId: EOS_EpicAccountId?

    /** The status prior to the change */
    public let PrevStatus: EOS_ELoginStatus

    /** The status at the time of the notification */
    public let CurrentStatus: EOS_ELoginStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_LoginStatusChangedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.PrevStatus = sdkObject.PrevStatus
        self.CurrentStatus = sdkObject.CurrentStatus
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Auth_LoginStatusChangedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose status has changed
    - Parameter PrevStatus: The status prior to the change
    - Parameter CurrentStatus: The status at the time of the notification
    */
    public init(
        LocalUserId: EOS_EpicAccountId?,
        PrevStatus: EOS_ELoginStatus,
        CurrentStatus: EOS_ELoginStatus
    ) {
        self.LocalUserId = LocalUserId
        self.PrevStatus = PrevStatus
        self.CurrentStatus = CurrentStatus
    }
}
