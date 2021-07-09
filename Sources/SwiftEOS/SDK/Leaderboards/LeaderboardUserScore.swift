import Foundation
import EOSSDK

/**
 * Contains information about a single leaderboard user score
 * 
 * - see: release func: EOS_Leaderboards_LeaderboardUserScore_Release
 */
public struct SwiftEOS_Leaderboards_LeaderboardUserScore: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_LEADERBOARDUSERSCORE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user who got this score  */
    public let UserId: EOS_ProductUserId?

    /** Leaderboard score  */
    public let Score: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_LeaderboardUserScore {
        try _tagEOS_Leaderboards_LeaderboardUserScore(
            ApiVersion: ApiVersion,
            UserId: UserId,
            Score: try safeNumericCast(exactly: Score)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_LeaderboardUserScore?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
        self.Score = try safeNumericCast(exactly: sdkObject.Score)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_LEADERBOARDUSERSCORE_API_LATEST,
        UserId: EOS_ProductUserId?,
        Score: Int
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
        self.Score = Score
    }
}
