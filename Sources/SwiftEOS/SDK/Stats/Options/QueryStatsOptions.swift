import Foundation
import EOSSDK


/** Input parameters for the `EOS_Stats_QueryStats` function. */
public struct SwiftEOS_Stats_QueryStatsOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_STATS_QUERYSTATS_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the local user requesting the stats. Set to null for dedicated server. */
    public let LocalUserId: EOS_ProductUserId?

    /** If not `EOS_STATS_TIME_UNDEFINED` then this is the POSIX timestamp for start time (Optional). */
    public let StartTime: Int

    /** If not `EOS_STATS_TIME_UNDEFINED` then this is the POSIX timestamp for end time (Optional). */
    public let EndTime: Int

    /**
    An array of stat names to query for (Optional).

    - Note: ``EOS/_tagEOS_Stats_QueryStatsOptions/StatNamesCount``:
    The number of stat names included in query (Optional), may not exceed `EOS_STATS_MAX_QUERY_STATS`.
    */
    public let StatNames: [String]?

    /** The Product User ID for the user whose stats are being retrieved */
    public let TargetUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Stats_QueryStatsOptions {
        try _tagEOS_Stats_QueryStatsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            StartTime: try safeNumericCast(exactly: StartTime),
            EndTime: try safeNumericCast(exactly: EndTime),
            StatNames: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: StatNames?.map { 
                    $0.utf8CString }),
            StatNamesCount: try safeNumericCast(exactly: StatNames?.count ?? .zero),
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_QueryStatsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.StartTime = try safeNumericCast(exactly: sdkObject.StartTime)
        self.EndTime = try safeNumericCast(exactly: sdkObject.EndTime)
        self.StatNames = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.StatNames,
            count: sdkObject.StatNamesCount
        )
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_STATS_QUERYSTATS_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the local user requesting the stats. Set to null for dedicated server.
    - Parameter StartTime: If not `EOS_STATS_TIME_UNDEFINED` then this is the POSIX timestamp for start time (Optional).
    - Parameter EndTime: If not `EOS_STATS_TIME_UNDEFINED` then this is the POSIX timestamp for end time (Optional).
    - Parameter StatNames: An array of stat names to query for (Optional).
    - Note: ``EOS/_tagEOS_Stats_QueryStatsOptions/StatNamesCount``:
    The number of stat names included in query (Optional), may not exceed `EOS_STATS_MAX_QUERY_STATS`.
    - Parameter TargetUserId: The Product User ID for the user whose stats are being retrieved
    */
    public init(
        ApiVersion: Int32 = EOS_STATS_QUERYSTATS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        StartTime: Int,
        EndTime: Int,
        StatNames: [String]?,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.StartTime = StartTime
        self.EndTime = EndTime
        self.StatNames = StatNames
        self.TargetUserId = TargetUserId
    }
}
