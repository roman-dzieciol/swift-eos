import Foundation
import EOSSDK


/** Output parameters for the `EOS_Achievements_OnAchievementsUnlockedCallback` Function. */
public struct SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfo {

    /** The Product User ID for the user who received the unlocked achievements notification */
    public let UserId: EOS_ProductUserId?

    /**
    This member is not used and will always be set to NULL.

    - Note: ``EOS/_tagEOS_Achievements_OnAchievementsUnlockedCallbackInfo/AchievementsCount``:
    The number of achievements.
    */
    public let AchievementIds: [String]?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_OnAchievementsUnlockedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.UserId = sdkObject.UserId
        self.AchievementIds = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.AchievementIds,
            count: sdkObject.AchievementsCount
        )
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Achievements_OnAchievementsUnlockedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter UserId: The Product User ID for the user who received the unlocked achievements notification
    - Parameter AchievementIds: This member is not used and will always be set to NULL.
    - Note: ``EOS/_tagEOS_Achievements_OnAchievementsUnlockedCallbackInfo/AchievementsCount``:
    The number of achievements.
    */
    public init(
        UserId: EOS_ProductUserId?,
        AchievementIds: [String]?
    ) {
        self.UserId = UserId
        self.AchievementIds = AchievementIds
    }
}
