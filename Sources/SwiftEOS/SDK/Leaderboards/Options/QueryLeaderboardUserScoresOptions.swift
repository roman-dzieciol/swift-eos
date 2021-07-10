import Foundation
import EOSSDK

/** Input parameters for the `EOS_Leaderboards_QueryLeaderboardUserScores` function. */
public struct SwiftEOS_Leaderboards_QueryLeaderboardUserScoresOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LEADERBOARDS_QUERYLEADERBOARDUSERSCORES_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    An array of Product User IDs indicating the users whose scores you want to retrieve

    - Note: ``EOS/_tagEOS_Leaderboards_QueryLeaderboardUserScoresOptions/UserIdsCount``:
    The number of users included in query
    */
    public let UserIds: [EOS_ProductUserId]?

    /**
    The stats to be collected, along with the sorting method to use when determining rank order for each stat

    - Note: ``EOS/_tagEOS_Leaderboards_QueryLeaderboardUserScoresOptions/StatInfoCount``:
    The number of stats to query
    */
    public let StatInfo: [SwiftEOS_Leaderboards_UserScoresQueryStatInfo]?

    /** An optional POSIX timestamp, or `EOS_LEADERBOARDS_TIME_UNDEFINED`; results will only include scores made after this time */
    public let StartTime: Int

    /** An optional POSIX timestamp, or `EOS_LEADERBOARDS_TIME_UNDEFINED`; results will only include scores made before this time */
    public let EndTime: Int

    /**
    Product User ID for user who is querying user scores.
    Must be set when using a client policy that requires a valid logged in user.
    Not used for Dedicated Server where no user is available.
    */
    public let LocalUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_QueryLeaderboardUserScoresOptions {
        try _tagEOS_Leaderboards_QueryLeaderboardUserScoresOptions(
            ApiVersion: ApiVersion,
            UserIds: pointerManager.managedPointerToBuffer(copyingArray: UserIds),
            UserIdsCount: try safeNumericCast(exactly: UserIds?.count ?? .zero),
            StatInfo: try pointerManager.managedPointerToBuffer(copyingArray: StatInfo?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) }),
            StatInfoCount: try safeNumericCast(exactly: StatInfo?.count ?? .zero),
            StartTime: try safeNumericCast(exactly: StartTime),
            EndTime: try safeNumericCast(exactly: EndTime),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_QueryLeaderboardUserScoresOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserIds = try trivialOptionalArrayFromTrivialOptionalPointer(
            start: sdkObject.UserIds,
            count: sdkObject.UserIdsCount
        )
        self.StatInfo = try sdkObject.StatInfo.array(safeNumericCast(exactly: sdkObject.StatInfoCount)).compactMap { 
            try SwiftEOS_Leaderboards_UserScoresQueryStatInfo.init(sdkObject: $0.pointee) }
        self.StartTime = try safeNumericCast(exactly: sdkObject.StartTime)
        self.EndTime = try safeNumericCast(exactly: sdkObject.EndTime)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LEADERBOARDS_QUERYLEADERBOARDUSERSCORES_API_LATEST`.
    - Parameter UserIds: An array of Product User IDs indicating the users whose scores you want to retrieve
    - Note: ``EOS/_tagEOS_Leaderboards_QueryLeaderboardUserScoresOptions/UserIdsCount``:
    The number of users included in query
    - Parameter StatInfo: The stats to be collected, along with the sorting method to use when determining rank order for each stat
    - Note: ``EOS/_tagEOS_Leaderboards_QueryLeaderboardUserScoresOptions/StatInfoCount``:
    The number of stats to query
    - Parameter StartTime: An optional POSIX timestamp, or `EOS_LEADERBOARDS_TIME_UNDEFINED`; results will only include scores made after this time
    - Parameter EndTime: An optional POSIX timestamp, or `EOS_LEADERBOARDS_TIME_UNDEFINED`; results will only include scores made before this time
    - Parameter LocalUserId: Product User ID for user who is querying user scores.
    Must be set when using a client policy that requires a valid logged in user.
    Not used for Dedicated Server where no user is available.
    */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_QUERYLEADERBOARDUSERSCORES_API_LATEST,
        UserIds: [EOS_ProductUserId]?,
        StatInfo: [SwiftEOS_Leaderboards_UserScoresQueryStatInfo]?,
        StartTime: Int,
        EndTime: Int,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.UserIds = UserIds
        self.StatInfo = StatInfo
        self.StartTime = StartTime
        self.EndTime = EndTime
        self.LocalUserId = LocalUserId
    }
}
