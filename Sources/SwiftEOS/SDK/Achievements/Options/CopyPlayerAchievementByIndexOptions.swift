import Foundation
import EOSSDK

/** Input parameters for the EOS_Achievements_CopyPlayerAchievementByIndex function. */
public struct SwiftEOS_Achievements_CopyPlayerAchievementByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_COPYPLAYERACHIEVEMENTBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID for the user whose achievement is to be retrieved.  */
    public let TargetUserId: EOS_ProductUserId?

    /** The index of the player achievement data to retrieve from the cache.  */
    public let AchievementIndex: Int

    /** The Product User ID for the user who is querying for a player achievement. For a Dedicated Server this should be null.  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_CopyPlayerAchievementByIndexOptions {
        try _tagEOS_Achievements_CopyPlayerAchievementByIndexOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            AchievementIndex: try safeNumericCast(exactly: AchievementIndex),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_CopyPlayerAchievementByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.AchievementIndex = try safeNumericCast(exactly: sdkObject.AchievementIndex)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ACHIEVEMENTS_COPYPLAYERACHIEVEMENTBYINDEX_API_LATEST. 
     * - Parameter TargetUserId:  The Product User ID for the user whose achievement is to be retrieved. 
     * - Parameter AchievementIndex:  The index of the player achievement data to retrieve from the cache. 
     * - Parameter LocalUserId:  The Product User ID for the user who is querying for a player achievement. For a Dedicated Server this should be null. 
     */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_COPYPLAYERACHIEVEMENTBYINDEX_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        AchievementIndex: Int,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.AchievementIndex = AchievementIndex
        self.LocalUserId = LocalUserId
    }
}
