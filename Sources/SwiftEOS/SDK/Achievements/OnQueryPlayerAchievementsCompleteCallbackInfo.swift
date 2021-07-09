import Foundation
import EOSSDK

/** Data containing the result information for querying a player's achievements request. */
public struct SwiftEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request.  */
    public let UserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.UserId = sdkObject.UserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /** Memberwise initializer */
    public init(
        ResultCode: EOS_EResult,
        UserId: EOS_ProductUserId?
    ) {
        self.ResultCode = ResultCode
        self.UserId = UserId
    }
}
