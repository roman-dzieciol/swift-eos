import Foundation
import EOSSDK

/** This struct is passed in with a call to EOS_RTC_OnBlockParticipantCallback. */
public struct SwiftEOS_RTC_BlockParticipantCallbackInfo {

    /**
    This returns:EOS_Success if the channel was successfully blocked.EOS_UnexpectedError otherwise.
    */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request. */
    public let LocalUserId: EOS_ProductUserId?

    /** The room the users should be blocked on. */
    public let RoomName: String?

    /** The Product User ID of the participant being blocked */
    public let ParticipantId: EOS_ProductUserId?

    /** The block state that should have been set */
    public let bBlocked: Bool

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_BlockParticipantCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.ParticipantId = sdkObject.ParticipantId
        self.bBlocked = try swiftBoolFromEosBool(sdkObject.bBlocked)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTC_BlockParticipantCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: This returns:EOS_Success if the channel was successfully blocked.EOS_UnexpectedError otherwise.
    - Parameter LocalUserId: The Product User ID of the user who initiated this request.
    - Parameter RoomName: The room the users should be blocked on.
    - Parameter ParticipantId: The Product User ID of the participant being blocked
    - Parameter bBlocked: The block state that should have been set
    */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        ParticipantId: EOS_ProductUserId?,
        bBlocked: Bool
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.ParticipantId = ParticipantId
        self.bBlocked = bBlocked
    }
}
