import Foundation
import EOSSDK

/**
Contains information about a single unlocked achievement.

- Note: Release func: ```EOS_Achievements_UnlockedAchievement_Release```
*/
public struct SwiftEOS_Achievements_UnlockedAchievement: SwiftEOSObject {

    /** API Version: Set this to `EOS_ACHIEVEMENTS_UNLOCKEDACHIEVEMENT_API_LATEST`. */
    public let ApiVersion: Int32

    /** Achievement ID that can be used to uniquely identify the unlocked achievement. */
    public let AchievementId: String?

    /** If not `EOS_ACHIEVEMENTS_ACHIEVEMENT_UNLOCKTIME_UNDEFINED` then this is the POSIX timestamp that the achievement was unlocked. */
    public let UnlockTime: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_UnlockedAchievement {
        try _tagEOS_Achievements_UnlockedAchievement(
            ApiVersion: ApiVersion,
            AchievementId: pointerManager.managedPointerToBuffer(copyingArray: AchievementId?.utf8CString),
            UnlockTime: try safeNumericCast(exactly: UnlockTime)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_UnlockedAchievement?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AchievementId = String(cString: sdkObject.AchievementId)
        self.UnlockTime = try safeNumericCast(exactly: sdkObject.UnlockTime)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ACHIEVEMENTS_UNLOCKEDACHIEVEMENT_API_LATEST`.
    - Parameter AchievementId: Achievement ID that can be used to uniquely identify the unlocked achievement.
    - Parameter UnlockTime: If not `EOS_ACHIEVEMENTS_ACHIEVEMENT_UNLOCKTIME_UNDEFINED` then this is the POSIX timestamp that the achievement was unlocked.
    */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_UNLOCKEDACHIEVEMENT_API_LATEST,
        AchievementId: String?,
        UnlockTime: Int
    ) {
        self.ApiVersion = ApiVersion
        self.AchievementId = AchievementId
        self.UnlockTime = UnlockTime
    }
}
