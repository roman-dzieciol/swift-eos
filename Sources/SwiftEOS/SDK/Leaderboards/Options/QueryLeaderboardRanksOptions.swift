import Foundation
import EOSSDK

/**
Input parameters for the EOS_Leaderboards_QueryLeaderboardRanks function.

- SeeAlso: EOS_Leaderboards_Definition
*/
public struct SwiftEOS_Leaderboards_QueryLeaderboardRanksOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_QUERYLEADERBOARDRANKS_API_LATEST. */
    public let ApiVersion: Int32

    /** The ID of the leaderboard whose information you want to retrieve. */
    public let LeaderboardId: String?

    /**
    Product User ID for user who is querying ranks.Must be set when using a client policy that requires a valid logged in user.Not used for Dedicated Server where no user is available.
    */
    public let LocalUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_QueryLeaderboardRanksOptions {
        _tagEOS_Leaderboards_QueryLeaderboardRanksOptions(
            ApiVersion: ApiVersion,
            LeaderboardId: pointerManager.managedPointerToBuffer(copyingArray: LeaderboardId?.utf8CString),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_QueryLeaderboardRanksOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LeaderboardId = String(cString: sdkObject.LeaderboardId)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_LEADERBOARDS_QUERYLEADERBOARDRANKS_API_LATEST.
    - Parameter LeaderboardId: The ID of the leaderboard whose information you want to retrieve.
    - Parameter LocalUserId: Product User ID for user who is querying ranks.Must be set when using a client policy that requires a valid logged in user.Not used for Dedicated Server where no user is available.
    */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_QUERYLEADERBOARDRANKS_API_LATEST,
        LeaderboardId: String?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LeaderboardId = LeaderboardId
        self.LocalUserId = LocalUserId
    }
}
