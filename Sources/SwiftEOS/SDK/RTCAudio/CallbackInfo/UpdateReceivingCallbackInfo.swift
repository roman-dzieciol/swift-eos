import Foundation
import EOSSDK


/** This struct is passed in with a call to `EOS_RTCAudio_OnUpdateReceivingCallback`. */
public struct SwiftEOS_RTCAudio_UpdateReceivingCallbackInfo {

    /**
    This returns:
    `EOS_Success` if the users were successfully unblocked.
    `EOS_UnexpectedError` otherwise.
    */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request. */
    public let LocalUserId: EOS_ProductUserId?

    /** The room this settings should be applied on. */
    public let RoomName: String?

    /** The participant to modify or null to update the global configuration */
    public let ParticipantId: EOS_ProductUserId?

    /** Muted or unmuted audio track */
    public let bAudioEnabled: Bool

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_UpdateReceivingCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = stringFromOptionalCStringPointer(sdkObject.RoomName)
        self.ParticipantId = sdkObject.ParticipantId
        self.bAudioEnabled = try swiftBoolFromEosBool(sdkObject.bAudioEnabled)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_UpdateReceivingCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: This returns:
    `EOS_Success` if the users were successfully unblocked.
    `EOS_UnexpectedError` otherwise.
    - Parameter LocalUserId: The Product User ID of the user who initiated this request.
    - Parameter RoomName: The room this settings should be applied on.
    - Parameter ParticipantId: The participant to modify or null to update the global configuration
    - Parameter bAudioEnabled: Muted or unmuted audio track
    */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        ParticipantId: EOS_ProductUserId?,
        bAudioEnabled: Bool
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.ParticipantId = ParticipantId
        self.bAudioEnabled = bAudioEnabled
    }
}
