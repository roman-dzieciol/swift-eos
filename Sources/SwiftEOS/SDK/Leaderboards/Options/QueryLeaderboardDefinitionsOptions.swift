import Foundation
import EOSSDK


/**
Input parameters for the `EOS_Leaderboards_QueryLeaderboardDefinitions` function.
StartTime and EndTime are optional parameters, they can be used to limit the list of definitions
to overlap the time window specified.
*/
public struct SwiftEOS_Leaderboards_QueryLeaderboardDefinitionsOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LEADERBOARDS_QUERYLEADERBOARDDEFINITIONS_API_LATEST`. */
    public let ApiVersion: Int32

    /** An optional POSIX timestamp for the leaderboard's start time, or `EOS_LEADERBOARDS_TIME_UNDEFINED` */
    public let StartTime: Int

    /** An optional POSIX timestamp for the leaderboard's end time, or `EOS_LEADERBOARDS_TIME_UNDEFINED` */
    public let EndTime: Int

    /**
    Product User ID for user who is querying definitions.
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
    ) throws -> _tagEOS_Leaderboards_QueryLeaderboardDefinitionsOptions {
        try _tagEOS_Leaderboards_QueryLeaderboardDefinitionsOptions(
            ApiVersion: ApiVersion,
            StartTime: try safeNumericCast(exactly: StartTime),
            EndTime: try safeNumericCast(exactly: EndTime),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_QueryLeaderboardDefinitionsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.StartTime = try safeNumericCast(exactly: sdkObject.StartTime)
        self.EndTime = try safeNumericCast(exactly: sdkObject.EndTime)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LEADERBOARDS_QUERYLEADERBOARDDEFINITIONS_API_LATEST`.
    - Parameter StartTime: An optional POSIX timestamp for the leaderboard's start time, or `EOS_LEADERBOARDS_TIME_UNDEFINED`
    - Parameter EndTime: An optional POSIX timestamp for the leaderboard's end time, or `EOS_LEADERBOARDS_TIME_UNDEFINED`
    - Parameter LocalUserId: Product User ID for user who is querying definitions.
    Must be set when using a client policy that requires a valid logged in user.
    Not used for Dedicated Server where no user is available.
    */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_QUERYLEADERBOARDDEFINITIONS_API_LATEST,
        StartTime: Int,
        EndTime: Int,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.StartTime = StartTime
        self.EndTime = EndTime
        self.LocalUserId = LocalUserId
    }
}
