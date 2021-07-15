import Foundation
import EOSSDK


/** This struct is passed in with a call to `EOS_RTCAudio_AddNotifyParticipantUpdated` registered event. */
public struct SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo {

    /** The Product User ID of the user who initiated this request. */
    public let LocalUserId: EOS_ProductUserId?

    /** The room associated with this event. */
    public let RoomName: String?

    /** The participant updated. */
    public let ParticipantId: EOS_ProductUserId?

    /** The participant speaking / non-speaking status. */
    public let bSpeaking: Bool

    /** The participant audio status (enabled, disabled). */
    public let AudioStatus: EOS_ERTCAudioStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_ParticipantUpdatedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = stringFromOptionalCStringPointer(sdkObject.RoomName)
        self.ParticipantId = sdkObject.ParticipantId
        self.bSpeaking = try swiftBoolFromEosBool(sdkObject.bSpeaking)
        self.AudioStatus = sdkObject.AudioStatus
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_ParticipantUpdatedCallbackInfo>?
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
    - Parameter ParticipantId: The participant updated.
    - Parameter bSpeaking: The participant speaking / non-speaking status.
    - Parameter AudioStatus: The participant audio status (enabled, disabled).
    */
    public init(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        ParticipantId: EOS_ProductUserId?,
        bSpeaking: Bool,
        AudioStatus: EOS_ERTCAudioStatus
    ) {
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.ParticipantId = ParticipantId
        self.bSpeaking = bSpeaking
        self.AudioStatus = AudioStatus
    }
}
