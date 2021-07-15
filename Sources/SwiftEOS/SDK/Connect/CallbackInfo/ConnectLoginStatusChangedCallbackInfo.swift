import Foundation
import EOSSDK


/** Output parameters for the `EOS_Connect_OnLoginStatusChangedCallback` function. */
public struct SwiftEOS_Connect_LoginStatusChangedCallbackInfo {

    /** The Product User ID of the local player whose status has changed. */
    public let LocalUserId: EOS_ProductUserId?

    /** The status prior to the change. */
    public let PreviousStatus: EOS_ELoginStatus

    /** The status at the time of the notification. */
    public let CurrentStatus: EOS_ELoginStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_LoginStatusChangedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.PreviousStatus = sdkObject.PreviousStatus
        self.CurrentStatus = sdkObject.CurrentStatus
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_LoginStatusChangedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter LocalUserId: The Product User ID of the local player whose status has changed.
    - Parameter PreviousStatus: The status prior to the change.
    - Parameter CurrentStatus: The status at the time of the notification.
    */
    public init(
        LocalUserId: EOS_ProductUserId?,
        PreviousStatus: EOS_ELoginStatus,
        CurrentStatus: EOS_ELoginStatus
    ) {
        self.LocalUserId = LocalUserId
        self.PreviousStatus = PreviousStatus
        self.CurrentStatus = CurrentStatus
    }
}
