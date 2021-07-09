import Foundation
import EOSSDK

/** Input parameters for the EOS_Achievements_CopyPlayerAchievementByAchievementId function. */
public struct SwiftEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_COPYPLAYERACHIEVEMENTBYACHIEVEMENTID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID for the user whose achievement is to be retrieved.  */
    public let TargetUserId: EOS_ProductUserId?

    /** Achievement ID to search for when retrieving player achievement data from the cache.  */
    public let AchievementId: String?

    /** The Product User ID for the user who is querying for a player achievement. For a Dedicated Server this should be null.  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions {
        _tagEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            AchievementId: pointerManager.managedPointerToBuffer(copyingArray: AchievementId?.utf8CString),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.AchievementId = String(cString: sdkObject.AchievementId)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_COPYPLAYERACHIEVEMENTBYACHIEVEMENTID_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        AchievementId: String?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.AchievementId = AchievementId
        self.LocalUserId = LocalUserId
    }
}
