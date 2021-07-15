import Foundation
import EOSSDK


/** Input parameters for the `EOS_Leaderboards_CopyLeaderboardRecordByIndex` function. */
public struct SwiftEOS_Leaderboards_CopyLeaderboardRecordByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LEADERBOARDS_COPYLEADERBOARDRECORDBYINDEX_API_LATEST`. */
    public let ApiVersion: Int32

    /** Index of the leaderboard record to retrieve from the cache */
    public let LeaderboardRecordIndex: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_CopyLeaderboardRecordByIndexOptions {
        try _tagEOS_Leaderboards_CopyLeaderboardRecordByIndexOptions(
            ApiVersion: ApiVersion,
            LeaderboardRecordIndex: try safeNumericCast(exactly: LeaderboardRecordIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_CopyLeaderboardRecordByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LeaderboardRecordIndex = try safeNumericCast(exactly: sdkObject.LeaderboardRecordIndex)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LEADERBOARDS_COPYLEADERBOARDRECORDBYINDEX_API_LATEST`.
    - Parameter LeaderboardRecordIndex: Index of the leaderboard record to retrieve from the cache
    */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_COPYLEADERBOARDRECORDBYINDEX_API_LATEST,
        LeaderboardRecordIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LeaderboardRecordIndex = LeaderboardRecordIndex
    }
}
