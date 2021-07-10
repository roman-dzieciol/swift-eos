import Foundation
import EOSSDK

/** Input parameters for the EOS_Leaderboards_CopyLeaderboardRecordByUserId function. */
public struct SwiftEOS_Leaderboards_CopyLeaderboardRecordByUserIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_COPYLEADERBOARDRECORDBYUSERID_API_LATEST. */
    public let ApiVersion: Int32

    /** Leaderboard data will be copied from the cache if it relates to the user matching this Product User ID */
    public let UserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_CopyLeaderboardRecordByUserIdOptions {
        _tagEOS_Leaderboards_CopyLeaderboardRecordByUserIdOptions(
            ApiVersion: ApiVersion,
            UserId: UserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_CopyLeaderboardRecordByUserIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_LEADERBOARDS_COPYLEADERBOARDRECORDBYUSERID_API_LATEST.
    - Parameter UserId: Leaderboard data will be copied from the cache if it relates to the user matching this Product User ID
    */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_COPYLEADERBOARDRECORDBYUSERID_API_LATEST,
        UserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
    }
}
