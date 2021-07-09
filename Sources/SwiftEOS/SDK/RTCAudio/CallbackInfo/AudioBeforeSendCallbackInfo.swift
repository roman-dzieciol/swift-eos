import Foundation
import EOSSDK

/** This struct is passed in with a call to EOS_RTCAudio_AddNotifyAudioBeforeSend registered event. */
public struct SwiftEOS_RTCAudio_AudioBeforeSendCallbackInfo {

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room associated with this event.  */
    public let RoomName: String?

    /** Audio buffer.  */
    public let Buffer: SwiftEOS_RTCAudio_AudioBuffer?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AudioBeforeSendCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.Buffer = try SwiftEOS_RTCAudio_AudioBuffer.init(sdkObject: sdkObject.Buffer.pointee)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_AudioBeforeSendCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /** Memberwise initializer */
    public init(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        Buffer: SwiftEOS_RTCAudio_AudioBuffer?
    ) {
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.Buffer = Buffer
    }
}
