import Foundation
import EOSSDK

/** Input parameters for the `EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId` function. */
public struct SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LEADERBOARDS_COPYLEADERBOARDDEFINITIONBYLEADERBOARDID_API_LATEST`. */
    public let ApiVersion: Int32

    /** The ID of the leaderboard whose definition you want to copy from the cache */
    public let LeaderboardId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdOptions {
        _tagEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdOptions(
            ApiVersion: ApiVersion,
            LeaderboardId: pointerManager.managedPointerToBuffer(copyingArray: LeaderboardId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LeaderboardId = String(cString: sdkObject.LeaderboardId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LEADERBOARDS_COPYLEADERBOARDDEFINITIONBYLEADERBOARDID_API_LATEST`.
    - Parameter LeaderboardId: The ID of the leaderboard whose definition you want to copy from the cache
    */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_COPYLEADERBOARDDEFINITIONBYLEADERBOARDID_API_LATEST,
        LeaderboardId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LeaderboardId = LeaderboardId
    }
}
