import Foundation
import EOSSDK

/** Input parameters for the EOS_Achievements_CopyAchievementDefinitionByIndex function. */
public struct SwiftEOS_Achievements_CopyAchievementDefinitionByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_COPYDEFINITIONBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Index of the achievement definition to retrieve from the cache  */
    public let AchievementIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_CopyAchievementDefinitionByIndexOptions {
        try _tagEOS_Achievements_CopyAchievementDefinitionByIndexOptions(
            ApiVersion: ApiVersion,
            AchievementIndex: try safeNumericCast(exactly: AchievementIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_CopyAchievementDefinitionByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AchievementIndex = try safeNumericCast(exactly: sdkObject.AchievementIndex)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ACHIEVEMENTS_COPYDEFINITIONBYINDEX_API_LATEST. 
     * - Parameter AchievementIndex:  Index of the achievement definition to retrieve from the cache 
     */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_COPYDEFINITIONBYINDEX_API_LATEST,
        AchievementIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.AchievementIndex = AchievementIndex
    }
}
