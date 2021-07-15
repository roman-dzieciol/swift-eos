import Foundation
import EOSSDK


/** Input parameters for the `EOS_Achievements_GetUnlockedAchievementCount` function. */
public struct SwiftEOS_Achievements_GetUnlockedAchievementCountOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ACHIEVEMENTS_GETUNLOCKEDACHIEVEMENTCOUNT_API_LATEST`. */
    public let ApiVersion: Int32

    /** Product User ID for which to retrieve the unlocked achievement count */
    public let UserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_GetUnlockedAchievementCountOptions {
        _tagEOS_Achievements_GetUnlockedAchievementCountOptions(
            ApiVersion: ApiVersion,
            UserId: UserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_GetUnlockedAchievementCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ACHIEVEMENTS_GETUNLOCKEDACHIEVEMENTCOUNT_API_LATEST`.
    - Parameter UserId: Product User ID for which to retrieve the unlocked achievement count
    */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_GETUNLOCKEDACHIEVEMENTCOUNT_API_LATEST,
        UserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
    }
}
