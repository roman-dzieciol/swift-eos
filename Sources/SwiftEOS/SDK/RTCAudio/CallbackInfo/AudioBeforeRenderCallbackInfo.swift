import Foundation
import EOSSDK

/** This struct is passed in with a call to EOS_RTCAudio_AddNotifyAudioBeforeRender registered event. */
public struct SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo {

    /** The Product User ID of the user who initiated this request. */
    public let LocalUserId: EOS_ProductUserId?

    /** The room associated with this event. */
    public let RoomName: String?

    /**
    Audio buffer.If bUnmixedAudio was set to true when setting the notifications (aka: you get buffers per participant), then you should not modify this buffer.
    */
    public let Buffer: SwiftEOS_RTCAudio_AudioBuffer?

    /**
    The Product User ID of the participant if bUnmixedAudio was set to true when setting the notifications, or empty if bUnmixedAudio was set to false and thus the buffer is the mixed audio of all participants
    */
    public let ParticipantId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AudioBeforeRenderCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.Buffer = try SwiftEOS_RTCAudio_AudioBuffer.init(sdkObject: sdkObject.Buffer.pointee)
        self.ParticipantId = sdkObject.ParticipantId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_AudioBeforeRenderCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter LocalUserId: The Product User ID of the user who initiated this request.
    - Parameter RoomName: The room associated with this event.
    - Parameter Buffer: Audio buffer.If bUnmixedAudio was set to true when setting the notifications (aka: you get buffers per participant), then you should not modify this buffer.
    - Parameter ParticipantId: The Product User ID of the participant if bUnmixedAudio was set to true when setting the notifications, or empty if bUnmixedAudio was set to false and thus the buffer is the mixed audio of all participants
    */
    public init(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        Buffer: SwiftEOS_RTCAudio_AudioBuffer?,
        ParticipantId: EOS_ProductUserId?
    ) {
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.Buffer = Buffer
        self.ParticipantId = ParticipantId
    }
}
