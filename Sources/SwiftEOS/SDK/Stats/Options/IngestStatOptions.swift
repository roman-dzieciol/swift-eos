import Foundation
import EOSSDK

/** Input parameters for the EOS_Stats_IngestStat function. */
public struct SwiftEOS_Stats_IngestStatOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_STATS_INGESTSTAT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user requesting the ingest.  Set to null for dedicated server.  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Stats to ingest. 
     * - array num: StatsCount
     */
    public let Stats: [SwiftEOS_Stats_IngestData]?

    /**
     * The number of stats to ingest, may not exceed EOS_STATS_MAX_INGEST_STATS. 
     * - array buffer: Stats
     */
    public let StatsCount: Int

    /** The Product User ID for the user whose stat is being ingested.  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Stats_IngestStatOptions {
        try _tagEOS_Stats_IngestStatOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Stats: try pointerManager.managedPointerToBuffer(copyingArray: Stats?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) }),
            StatsCount: try safeNumericCast(exactly: StatsCount),
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_IngestStatOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Stats = try sdkObject.Stats.array(safeNumericCast(exactly: sdkObject.StatsCount)).compactMap { 
            try SwiftEOS_Stats_IngestData.init(sdkObject: $0.pointee) }
        self.StatsCount = try safeNumericCast(exactly: sdkObject.StatsCount)
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_STATS_INGESTSTAT_API_LATEST. 
     * - Parameter LocalUserId:  The Product User ID of the local user requesting the ingest.  Set to null for dedicated server. 
     * - Parameter Stats:  Stats to ingest. 
     * - array num: StatsCount
     * - Parameter StatsCount:  The number of stats to ingest, may not exceed EOS_STATS_MAX_INGEST_STATS. 
     * - array buffer: Stats
     * - Parameter TargetUserId:  The Product User ID for the user whose stat is being ingested. 
     */
    public init(
        ApiVersion: Int32 = EOS_STATS_INGESTSTAT_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Stats: [SwiftEOS_Stats_IngestData]?,
        StatsCount: Int,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Stats = Stats
        self.StatsCount = StatsCount
        self.TargetUserId = TargetUserId
    }
}
