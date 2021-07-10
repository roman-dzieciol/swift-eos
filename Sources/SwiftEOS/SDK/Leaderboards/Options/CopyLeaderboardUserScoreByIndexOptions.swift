import Foundation
import EOSSDK

/** Input parameters for the EOS_Leaderboards_CopyLeaderboardUserScoreByIndex function. */
public struct SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Index of the sorted leaderboard user score to retrieve from the cache.  */
    public let LeaderboardUserScoreIndex: Int

    /** Name of the stat used to rank the leaderboard.  */
    public let StatName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions {
        try _tagEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions(
            ApiVersion: ApiVersion,
            LeaderboardUserScoreIndex: try safeNumericCast(exactly: LeaderboardUserScoreIndex),
            StatName: pointerManager.managedPointerToBuffer(copyingArray: StatName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LeaderboardUserScoreIndex = try safeNumericCast(exactly: sdkObject.LeaderboardUserScoreIndex)
        self.StatName = String(cString: sdkObject.StatName)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYINDEX_API_LATEST. 
     * - Parameter LeaderboardUserScoreIndex:  Index of the sorted leaderboard user score to retrieve from the cache. 
     * - Parameter StatName:  Name of the stat used to rank the leaderboard. 
     */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYINDEX_API_LATEST,
        LeaderboardUserScoreIndex: Int,
        StatName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LeaderboardUserScoreIndex = LeaderboardUserScoreIndex
        self.StatName = StatName
    }
}
