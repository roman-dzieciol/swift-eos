import Foundation
import EOSSDK

/** Input parameters for the EOS_Leaderboards_CopyLeaderboardDefinitionByIndex function. */
public struct SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_COPYLEADERBOARDDEFINITIONBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Index of the leaderboard definition to retrieve from the cache  */
    public let LeaderboardIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_CopyLeaderboardDefinitionByIndexOptions {
        try _tagEOS_Leaderboards_CopyLeaderboardDefinitionByIndexOptions(
            ApiVersion: ApiVersion,
            LeaderboardIndex: try safeNumericCast(exactly: LeaderboardIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_CopyLeaderboardDefinitionByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LeaderboardIndex = try safeNumericCast(exactly: sdkObject.LeaderboardIndex)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_LEADERBOARDS_COPYLEADERBOARDDEFINITIONBYINDEX_API_LATEST. 
     * - Parameter LeaderboardIndex:  Index of the leaderboard definition to retrieve from the cache 
     */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_COPYLEADERBOARDDEFINITIONBYINDEX_API_LATEST,
        LeaderboardIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LeaderboardIndex = LeaderboardIndex
    }
}
