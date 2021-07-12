import Foundation
import EOSSDK

/** Input parameters for the `EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId` function. */
public struct SwiftEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ACHIEVEMENTS_COPYACHIEVEMENTDEFINITIONV2BYACHIEVEMENTID_API_LATEST`. */
    public let ApiVersion: Int32

    /** Achievement ID to look for when copying the definition from the cache. */
    public let AchievementId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions {
        _tagEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions(
            ApiVersion: ApiVersion,
            AchievementId: pointerManager.managedPointerToBuffer(copyingArray: AchievementId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AchievementId = stringFromOptionalCStringPointer(sdkObject.AchievementId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ACHIEVEMENTS_COPYACHIEVEMENTDEFINITIONV2BYACHIEVEMENTID_API_LATEST`.
    - Parameter AchievementId: Achievement ID to look for when copying the definition from the cache.
    */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_COPYACHIEVEMENTDEFINITIONV2BYACHIEVEMENTID_API_LATEST,
        AchievementId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.AchievementId = AchievementId
    }
}
