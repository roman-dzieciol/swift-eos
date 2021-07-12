import Foundation
import EOSSDK

/** Output parameters for the `EOS_Achievements_OnAchievementsUnlockedCallbackV2` Function. */
public struct SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2Info {

    /** The Product User ID for the user who received the unlocked achievements notification */
    public let UserId: EOS_ProductUserId?

    /** The Achievement ID for the achievement that was unlocked. Pass this to `EOS_Achievements_CopyPlayerAchievementByAchievementId` to get the full achievement information. */
    public let AchievementId: String?

    /** POSIX timestamp when the achievement was unlocked. */
    public let UnlockTime: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_OnAchievementsUnlockedCallbackV2Info?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.UserId = sdkObject.UserId
        self.AchievementId = stringFromOptionalCStringPointer(sdkObject.AchievementId)
        self.UnlockTime = try safeNumericCast(exactly: sdkObject.UnlockTime)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Achievements_OnAchievementsUnlockedCallbackV2Info>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter UserId: The Product User ID for the user who received the unlocked achievements notification
    - Parameter AchievementId: The Achievement ID for the achievement that was unlocked. Pass this to `EOS_Achievements_CopyPlayerAchievementByAchievementId` to get the full achievement information.
    - Parameter UnlockTime: POSIX timestamp when the achievement was unlocked.
    */
    public init(
        UserId: EOS_ProductUserId?,
        AchievementId: String?,
        UnlockTime: Int
    ) {
        self.UserId = UserId
        self.AchievementId = AchievementId
        self.UnlockTime = UnlockTime
    }
}
