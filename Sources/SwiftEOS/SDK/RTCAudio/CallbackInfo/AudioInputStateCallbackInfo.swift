import Foundation
import EOSSDK

/** This struct is passed in with a call to EOS_RTCAudio_AddNotifyAudioInputState registered event. */
public struct SwiftEOS_RTCAudio_AudioInputStateCallbackInfo {

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room associated with this event.  */
    public let RoomName: String?

    /** The status of the audio input.  */
    public let Status: EOS_ERTCAudioInputStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AudioInputStateCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.Status = sdkObject.Status
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_AudioInputStateCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter LocalUserId:  The Product User ID of the user who initiated this request. 
     * - Parameter RoomName:  The room associated with this event. 
     * - Parameter Status:  The status of the audio input. 
     */
    public init(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        Status: EOS_ERTCAudioInputStatus
    ) {
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.Status = Status
    }
}
