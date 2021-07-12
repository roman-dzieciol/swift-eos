import Foundation
import EOSSDK

/** Contains information about a single stat to query with user scores. */
public struct SwiftEOS_Leaderboards_UserScoresQueryStatInfo: SwiftEOSObject {

    /** API Version: Set this to `EOS_LEADERBOARDS_USERSCORESQUERYSTATINFO_API_LATEST`. */
    public let ApiVersion: Int32

    /** The name of the stat to query. */
    public let StatName: String?

    /** Aggregation used to sort the cached user scores. */
    public let Aggregation: EOS_ELeaderboardAggregation

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_UserScoresQueryStatInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.StatName = stringFromOptionalCStringPointer(sdkObject.StatName)
        self.Aggregation = sdkObject.Aggregation
    }

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_UserScoresQueryStatInfo {
        _tagEOS_Leaderboards_UserScoresQueryStatInfo(
            ApiVersion: ApiVersion,
            StatName: pointerManager.managedPointerToBuffer(copyingArray: StatName?.utf8CString),
            Aggregation: Aggregation
        )
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LEADERBOARDS_USERSCORESQUERYSTATINFO_API_LATEST`.
    - Parameter StatName: The name of the stat to query.
    - Parameter Aggregation: Aggregation used to sort the cached user scores.
    */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_USERSCORESQUERYSTATINFO_API_LATEST,
        StatName: String?,
        Aggregation: EOS_ELeaderboardAggregation
    ) {
        self.ApiVersion = ApiVersion
        self.StatName = StatName
        self.Aggregation = Aggregation
    }
}
