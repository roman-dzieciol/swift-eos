import Foundation
import EOSSDK

/** Input parameters for the EOS_Achievements_CopyUnlockedAchievementByIndex function. */
public struct SwiftEOS_Achievements_CopyUnlockedAchievementByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYINDEX_API_LATEST. */
    public let ApiVersion: Int32

    /** The Product User ID for the user who is copying the unlocked achievement */
    public let UserId: EOS_ProductUserId?

    /** Index of the unlocked achievement to retrieve from the cache */
    public let AchievementIndex: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_CopyUnlockedAchievementByIndexOptions {
        try _tagEOS_Achievements_CopyUnlockedAchievementByIndexOptions(
            ApiVersion: ApiVersion,
            UserId: UserId,
            AchievementIndex: try safeNumericCast(exactly: AchievementIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_CopyUnlockedAchievementByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
        self.AchievementIndex = try safeNumericCast(exactly: sdkObject.AchievementIndex)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYINDEX_API_LATEST.
    - Parameter UserId: The Product User ID for the user who is copying the unlocked achievement
    - Parameter AchievementIndex: Index of the unlocked achievement to retrieve from the cache
    */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYINDEX_API_LATEST,
        UserId: EOS_ProductUserId?,
        AchievementIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
        self.AchievementIndex = AchievementIndex
    }
}
