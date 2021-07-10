import Foundation
import EOSSDK

/** Input parameters for the EOS_Achievements_UnlockAchievements function. */
public struct SwiftEOS_Achievements_UnlockAchievementsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_UNLOCKACHIEVEMENTS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID for the user whose achievements we want to unlock.  */
    public let UserId: EOS_ProductUserId?

    /** An array of Achievement IDs to unlock.  */
    public let AchievementIds: [String]?

    /** The number of achievements to unlock.  */
    public let AchievementsCount: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_UnlockAchievementsOptions {
        try _tagEOS_Achievements_UnlockAchievementsOptions(
            ApiVersion: ApiVersion,
            UserId: UserId,
            AchievementIds: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: AchievementIds?.map { 
                    $0.utf8CString }),
            AchievementsCount: try safeNumericCast(exactly: AchievementsCount)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_UnlockAchievementsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
        self.AchievementIds = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.AchievementIds,
            count: sdkObject.AchievementsCount
        )
        self.AchievementsCount = try safeNumericCast(exactly: sdkObject.AchievementsCount)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ACHIEVEMENTS_UNLOCKACHIEVEMENTS_API_LATEST. 
     * - Parameter UserId:  The Product User ID for the user whose achievements we want to unlock. 
     * - Parameter AchievementIds:  An array of Achievement IDs to unlock. 
     * - Parameter AchievementsCount:  The number of achievements to unlock. 
     */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_UNLOCKACHIEVEMENTS_API_LATEST,
        UserId: EOS_ProductUserId?,
        AchievementIds: [String]?,
        AchievementsCount: Int
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
        self.AchievementIds = AchievementIds
        self.AchievementsCount = AchievementsCount
    }
}
