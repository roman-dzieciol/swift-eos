import Foundation
import EOSSDK


/** Output parameters for the `EOS_KWS_OnPermissionsUpdateReceivedCallback` Function. */
public struct SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfo {

    /** Recipient Local user id */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_PermissionsUpdateReceivedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_KWS_PermissionsUpdateReceivedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter LocalUserId: Recipient Local user id
    */
    public init(
        LocalUserId: EOS_ProductUserId?
    ) {
        self.LocalUserId = LocalUserId
    }
}
