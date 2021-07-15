import Foundation
import EOSSDK


/** Input parameters for the `EOS_Achievements_GetPlayerAchievementCount` function. */
public struct SwiftEOS_Achievements_GetPlayerAchievementCountOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ACHIEVEMENTS_GETPLAYERACHIEVEMENTCOUNT_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID for the user whose achievement count is being retrieved. */
    public let UserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_GetPlayerAchievementCountOptions {
        _tagEOS_Achievements_GetPlayerAchievementCountOptions(
            ApiVersion: ApiVersion,
            UserId: UserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_GetPlayerAchievementCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ACHIEVEMENTS_GETPLAYERACHIEVEMENTCOUNT_API_LATEST`.
    - Parameter UserId: The Product User ID for the user whose achievement count is being retrieved.
    */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_GETPLAYERACHIEVEMENTCOUNT_API_LATEST,
        UserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
    }
}
