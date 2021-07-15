import Foundation
import EOSSDK


/** This struct is passed in with a call to `EOS_RTC_OnLeaveRoomCallback`. */
public struct SwiftEOS_RTC_LeaveRoomCallbackInfo {

    /**
    This returns:
    `EOS_Success` if the channel was successfully left.
    `EOS_AccessDenied` if the room name belongs to the Lobby voice system.
    `EOS_UnexpectedError` otherwise.
    */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request. */
    public let LocalUserId: EOS_ProductUserId?

    /** The room the user was trying to leave. */
    public let RoomName: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_LeaveRoomCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = stringFromOptionalCStringPointer(sdkObject.RoomName)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTC_LeaveRoomCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: This returns:
    `EOS_Success` if the channel was successfully left.
    `EOS_AccessDenied` if the room name belongs to the Lobby voice system.
    `EOS_UnexpectedError` otherwise.
    - Parameter LocalUserId: The Product User ID of the user who initiated this request.
    - Parameter RoomName: The room the user was trying to leave.
    */
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
