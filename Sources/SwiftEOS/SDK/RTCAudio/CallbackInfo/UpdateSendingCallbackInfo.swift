import Foundation
import EOSSDK

/** This struct is passed in with a call to EOS_RTCAudio_OnUpdateSendingCallback. */
public struct SwiftEOS_RTCAudio_UpdateSendingCallbackInfo {

    /**
    This returns:
    EOS_Success if the channel was successfully blocked.
    EOS_UnexpectedError otherwise.
    */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request. */
    public let LocalUserId: EOS_ProductUserId?

    /** The room this settings should be applied on. */
    public let RoomName: String?

    /** Muted or unmuted audio track status */
    public let AudioStatus: EOS_ERTCAudioStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_UpdateSendingCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.AudioStatus = sdkObject.AudioStatus
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_UpdateSendingCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: This returns:
    EOS_Success if the channel was successfully blocked.
    EOS_UnexpectedError otherwise.
    - Parameter LocalUserId: The Product User ID of the user who initiated this request.
    - Parameter RoomName: The room this settings should be applied on.
    - Parameter AudioStatus: Muted or unmuted audio track status
    */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        AudioStatus: EOS_ERTCAudioStatus
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.AudioStatus = AudioStatus
    }
}
