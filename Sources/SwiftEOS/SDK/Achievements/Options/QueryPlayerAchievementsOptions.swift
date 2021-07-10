import Foundation
import EOSSDK

/** Input parameters for the EOS_Achievements_QueryPlayerAchievements function. */
public struct SwiftEOS_Achievements_QueryPlayerAchievementsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_QUERYPLAYERACHIEVEMENTS_API_LATEST. */
    public let ApiVersion: Int32

    /** The Product User ID for the user whose achievements are to be retrieved. */
    public let TargetUserId: EOS_ProductUserId?

    /** The Product User ID for the user who is querying for player achievements. For a Dedicated Server this should be null. */
    public let LocalUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_QueryPlayerAchievementsOptions {
        _tagEOS_Achievements_QueryPlayerAchievementsOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_QueryPlayerAchievementsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ACHIEVEMENTS_QUERYPLAYERACHIEVEMENTS_API_LATEST.
    - Parameter TargetUserId: The Product User ID for the user whose achievements are to be retrieved.
    - Parameter LocalUserId: The Product User ID for the user who is querying for player achievements. For a Dedicated Server this should be null.
    */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_QUERYPLAYERACHIEVEMENTS_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.LocalUserId = LocalUserId
    }
}
