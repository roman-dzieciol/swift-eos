import Foundation
import EOSSDK

/** Input parameters for the EOS_Leaderboards_CopyLeaderboardUserScoreByUserId function. */
public struct SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYUSERID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID to look for when copying leaderboard score data from the cache  */
    public let UserId: EOS_ProductUserId?

    /** The name of the stat that is used to rank this leaderboard  */
    public let StatName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdOptions {
        _tagEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdOptions(
            ApiVersion: ApiVersion,
            UserId: UserId,
            StatName: pointerManager.managedPointerToBuffer(copyingArray: StatName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
        self.StatName = String(cString: sdkObject.StatName)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYUSERID_API_LATEST. 
     * - Parameter UserId:  The Product User ID to look for when copying leaderboard score data from the cache 
     * - Parameter StatName:  The name of the stat that is used to rank this leaderboard 
     */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYUSERID_API_LATEST,
        UserId: EOS_ProductUserId?,
        StatName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
        self.StatName = StatName
    }
}
