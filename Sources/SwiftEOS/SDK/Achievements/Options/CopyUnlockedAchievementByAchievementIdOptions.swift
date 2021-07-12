import Foundation
import EOSSDK

/** Input parameters for the `EOS_Achievements_CopyUnlockedAchievementByAchievementId` function. */
public struct SwiftEOS_Achievements_CopyUnlockedAchievementByAchievementIdOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYACHIEVEMENTID_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID for the user who is copying the unlocked achievement */
    public let UserId: EOS_ProductUserId?

    /** AchievementId of the unlocked achievement to retrieve from the cache */
    public let AchievementId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_CopyUnlockedAchievementByAchievementIdOptions {
        _tagEOS_Achievements_CopyUnlockedAchievementByAchievementIdOptions(
            ApiVersion: ApiVersion,
            UserId: UserId,
            AchievementId: pointerManager.managedPointerToBuffer(copyingArray: AchievementId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_CopyUnlockedAchievementByAchievementIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
        self.AchievementId = stringFromOptionalCStringPointer(sdkObject.AchievementId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYACHIEVEMENTID_API_LATEST`.
    - Parameter UserId: The Product User ID for the user who is copying the unlocked achievement
    - Parameter AchievementId: AchievementId of the unlocked achievement to retrieve from the cache
    */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYACHIEVEMENTID_API_LATEST,
        UserId: EOS_ProductUserId?,
        AchievementId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
        self.AchievementId = AchievementId
    }
}
