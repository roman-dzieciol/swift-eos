import Foundation
import EOSSDK

/**
Contains information about a single leaderboard record

- Note: Release func: ```EOS_Leaderboards_LeaderboardRecord_Release```
*/
public struct SwiftEOS_Leaderboards_LeaderboardRecord: SwiftEOSObject {

    /** API Version: Set this to `EOS_LEADERBOARDS_LEADERBOARDRECORD_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID assoicated with this record */
    public let UserId: EOS_ProductUserId?

    /** Sorted position on leaderboard */
    public let Rank: Int

    /** Leaderboard score */
    public let Score: Int

    /** The latest display name seen for the user since they last time logged in. This is empty if the user does not have a display name set. */
    public let UserDisplayName: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_LeaderboardRecord {
        try _tagEOS_Leaderboards_LeaderboardRecord(
            ApiVersion: ApiVersion,
            UserId: UserId,
            Rank: try safeNumericCast(exactly: Rank),
            Score: try safeNumericCast(exactly: Score),
            UserDisplayName: pointerManager.managedPointerToBuffer(copyingArray: UserDisplayName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_LeaderboardRecord?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
        self.Rank = try safeNumericCast(exactly: sdkObject.Rank)
        self.Score = try safeNumericCast(exactly: sdkObject.Score)
        self.UserDisplayName = String(cString: sdkObject.UserDisplayName)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LEADERBOARDS_LEADERBOARDRECORD_API_LATEST`.
    - Parameter UserId: The Product User ID assoicated with this record
    - Parameter Rank: Sorted position on leaderboard
    - Parameter Score: Leaderboard score
    - Parameter UserDisplayName: The latest display name seen for the user since they last time logged in. This is empty if the user does not have a display name set.
    */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_LEADERBOARDRECORD_API_LATEST,
        UserId: EOS_ProductUserId?,
        Rank: Int,
        Score: Int,
        UserDisplayName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
        self.Rank = Rank
        self.Score = Score
        self.UserDisplayName = UserDisplayName
    }
}
