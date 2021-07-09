import Foundation
import EOSSDK

/** This struct is passed in with a call to EOS_RTC_AddNotifyDisconnected registered event. */
public struct SwiftEOS_RTC_DisconnectedCallbackInfo {

    /**
     * This returns:
     * EOS_Success The room was left cleanly.
     * EOS_NoConnection: There was a network issue connecting to the server (retryable).
     * EOS_RTC_UserKicked: The user has been kicked by the server (retryable).
     * EOS_ServiceFailure: A known error occurred during interaction with the server (retryable).
     * EOS_UnexpectedError Unexpected error (retryable).
     */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room associated with this event.  */
    public let RoomName: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_DisconnectedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTC_DisconnectedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /** Memberwise initializer */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
    }
}
