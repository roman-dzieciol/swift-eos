import Foundation
import EOSSDK

/**
Contains information about a single leaderboard definition

- Note: Release func: ``EOS_Leaderboards_Definition_Release``
- Note: Release func: ``EOS_Leaderboards_LeaderboardDefinition_Release``
*/
public struct SwiftEOS_Leaderboards_Definition: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_DEFINITION_API_LATEST. */
    public let ApiVersion: Int32

    /** Unique ID to identify leaderboard. */
    public let LeaderboardId: String?

    /** Name of stat used to rank leaderboard. */
    public let StatName: String?

    /** Aggregation used to sort leaderboard. */
    public let Aggregation: EOS_ELeaderboardAggregation

    /** The POSIX timestamp for the start time, or EOS_LEADERBOARDS_TIME_UNDEFINED. */
    public let StartTime: Int

    /** The POSIX timestamp for the end time, or EOS_LEADERBOARDS_TIME_UNDEFINED. */
    public let EndTime: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_Definition {
        try _tagEOS_Leaderboards_Definition(
            ApiVersion: ApiVersion,
            LeaderboardId: pointerManager.managedPointerToBuffer(copyingArray: LeaderboardId?.utf8CString),
            StatName: pointerManager.managedPointerToBuffer(copyingArray: StatName?.utf8CString),
            Aggregation: Aggregation,
            StartTime: try safeNumericCast(exactly: StartTime),
            EndTime: try safeNumericCast(exactly: EndTime)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_Definition?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LeaderboardId = String(cString: sdkObject.LeaderboardId)
        self.StatName = String(cString: sdkObject.StatName)
        self.Aggregation = sdkObject.Aggregation
        self.StartTime = try safeNumericCast(exactly: sdkObject.StartTime)
        self.EndTime = try safeNumericCast(exactly: sdkObject.EndTime)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_LEADERBOARDS_DEFINITION_API_LATEST.
    - Parameter LeaderboardId: Unique ID to identify leaderboard.
    - Parameter StatName: Name of stat used to rank leaderboard.
    - Parameter Aggregation: Aggregation used to sort leaderboard.
    - Parameter StartTime: The POSIX timestamp for the start time, or EOS_LEADERBOARDS_TIME_UNDEFINED.
    - Parameter EndTime: The POSIX timestamp for the end time, or EOS_LEADERBOARDS_TIME_UNDEFINED.
    */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_DEFINITION_API_LATEST,
        LeaderboardId: String?,
        StatName: String?,
        Aggregation: EOS_ELeaderboardAggregation,
        StartTime: Int,
        EndTime: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LeaderboardId = LeaderboardId
        self.StatName = StatName
        self.Aggregation = Aggregation
        self.StartTime = StartTime
        self.EndTime = EndTime
    }
}
