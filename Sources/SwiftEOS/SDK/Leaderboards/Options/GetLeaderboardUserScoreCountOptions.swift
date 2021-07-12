import Foundation
import EOSSDK

/** Input parameters for the `EOS_Leaderboards_GetLeaderboardUserScoreCount` function. */
public struct SwiftEOS_Leaderboards_GetLeaderboardUserScoreCountOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LEADERBOARDS_GETLEADERBOARDUSERSCORECOUNT_API_LATEST`. */
    public let ApiVersion: Int32

    /** Name of stat used to rank leaderboard. */
    public let StatName: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_GetLeaderboardUserScoreCountOptions {
        _tagEOS_Leaderboards_GetLeaderboardUserScoreCountOptions(
            ApiVersion: ApiVersion,
            StatName: pointerManager.managedPointerToBuffer(copyingArray: StatName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_GetLeaderboardUserScoreCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.StatName = stringFromOptionalCStringPointer(sdkObject.StatName)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LEADERBOARDS_GETLEADERBOARDUSERSCORECOUNT_API_LATEST`.
    - Parameter StatName: Name of stat used to rank leaderboard.
    */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_GETLEADERBOARDUSERSCORECOUNT_API_LATEST,
        StatName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.StatName = StatName
    }
}
