import Foundation
import EOSSDK

/** Data containing the result information for unlocking achievements request. */
public struct SwiftEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request.  */
    public let UserId: EOS_ProductUserId?

    /** The number of achievements that the operation unlocked.  */
    public let AchievementsCount: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.UserId = sdkObject.UserId
        self.AchievementsCount = try safeNumericCast(exactly: sdkObject.AchievementsCount)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors. 
     * - Parameter UserId:  The Product User ID of the user who initiated this request. 
     * - Parameter AchievementsCount:  The number of achievements that the operation unlocked. 
     */
    public init(
        ResultCode: EOS_EResult,
        UserId: EOS_ProductUserId?,
        AchievementsCount: Int
    ) {
        self.ResultCode = ResultCode
        self.UserId = UserId
        self.AchievementsCount = AchievementsCount
    }
}
