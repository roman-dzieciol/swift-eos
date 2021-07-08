import Foundation
import EOSSDK

/** Input parameters for the EOS_Stats_CopyStatByIndex function. */
public struct SwiftEOS_Stats_CopyStatByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_STATS_COPYSTATBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user who owns the stat  */
    public let TargetUserId: EOS_ProductUserId?

    /** Index of the stat to retrieve from the cache  */
    public let StatIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Stats_CopyStatByIndexOptions {
        try _tagEOS_Stats_CopyStatByIndexOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            StatIndex: try safeNumericCast(exactly: StatIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_CopyStatByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.StatIndex = try safeNumericCast(exactly: sdkObject.StatIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_STATS_COPYSTATBYINDEX_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        StatIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.StatIndex = StatIndex
    }
}

/** Input parameters for the EOS_Stats_CopyStatByName function. */
public struct SwiftEOS_Stats_CopyStatByNameOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_STATS_COPYSTATBYNAME_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user who owns the stat  */
    public let TargetUserId: EOS_ProductUserId?

    /** Name of the stat to retrieve from the cache  */
    public let Name: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Stats_CopyStatByNameOptions {
        _tagEOS_Stats_CopyStatByNameOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            Name: pointerManager.managedPointerToBuffer(copyingArray: Name?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_CopyStatByNameOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.Name = String(cString: sdkObject.Name)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_STATS_COPYSTATBYNAME_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        Name: String?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.Name = Name
    }
}

/** Input parameters for the EOS_Stats_GetStatsCount function. */
public struct SwiftEOS_Stats_GetStatCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_STATS_GETSTATSCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID for the user whose stats are being counted  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Stats_GetStatCountOptions {
        _tagEOS_Stats_GetStatCountOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_GetStatCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_STATS_GETSTATSCOUNT_API_LATEST,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
    }
}

/** Contains information about a single stat to ingest. */
public struct SwiftEOS_Stats_IngestData: SwiftEOSObject {

    /** API Version: Set this to EOS_STATS_INGESTDATA_API_LATEST.  */
    public let ApiVersion: Int32

    /** The name of the stat to ingest.  */
    public let StatName: String?

    /** The amount to ingest the stat.  */
    public let IngestAmount: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_IngestData?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.StatName = String(cString: sdkObject.StatName)
        self.IngestAmount = try safeNumericCast(exactly: sdkObject.IngestAmount)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Stats_IngestData {
        try _tagEOS_Stats_IngestData(
            ApiVersion: ApiVersion,
            StatName: pointerManager.managedPointerToBuffer(copyingArray: StatName?.utf8CString),
            IngestAmount: try safeNumericCast(exactly: IngestAmount)
        )
    }
}

/** Data containing the result information for an ingest stat request. */
public struct SwiftEOS_Stats_IngestStatCompleteCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error.  */
    public let ResultCode: EOS_EResult

    /** The Product User ID for the user requesting the ingest  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID for the user whose stat is being ingested  */
    public let TargetUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_IngestStatCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Stats_IngestStatCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

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

    /** Memberwise initializer */
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

/** Data containing the result information for querying a player's stats request. */
public struct SwiftEOS_Stats_OnQueryStatsCompleteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID whose stats which were retrieved  */
    public let TargetUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_OnQueryStatsCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Stats_OnQueryStatsCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Stats_QueryStats function. */
public struct SwiftEOS_Stats_QueryStatsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_STATS_QUERYSTATS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user requesting the stats. Set to null for dedicated server.  */
    public let LocalUserId: EOS_ProductUserId?

    /** If not EOS_STATS_TIME_UNDEFINED then this is the POSIX timestamp for start time (Optional).  */
    public let StartTime: Int

    /** If not EOS_STATS_TIME_UNDEFINED then this is the POSIX timestamp for end time (Optional).  */
    public let EndTime: Int

    /**
     * An array of stat names to query for (Optional). 
     * - array num: StatNamesCount
     */
    public let StatNames: [String]?

    /**
     * The number of stat names included in query (Optional), may not exceed EOS_STATS_MAX_QUERY_STATS. 
     * - array buffer: StatNames
     */
    public let StatNamesCount: Int

    /** The Product User ID for the user whose stats are being retrieved  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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
            StatNamesCount: try safeNumericCast(exactly: StatNamesCount),
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
        self.StatNamesCount = try safeNumericCast(exactly: sdkObject.StatNamesCount)
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_STATS_QUERYSTATS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        StartTime: Int,
        EndTime: Int,
        StatNames: [String]?,
        StatNamesCount: Int,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.StartTime = StartTime
        self.EndTime = EndTime
        self.StatNames = StatNames
        self.StatNamesCount = StatNamesCount
        self.TargetUserId = TargetUserId
    }
}

/**
 * Contains information about a single player stat.
 * 
 * - see: release func: EOS_Stats_Stat_Release
 */
public struct SwiftEOS_Stats_Stat: SwiftEOSObject {

    /** API Version: Set this to EOS_STATS_STAT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the stat.  */
    public let Name: String?

    /** If not EOS_STATS_TIME_UNDEFINED then this is the POSIX timestamp for start time.  */
    public let StartTime: Int

    /** If not EOS_STATS_TIME_UNDEFINED then this is the POSIX timestamp for end time.  */
    public let EndTime: Int

    /** Current value for the stat.  */
    public let Value: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Stats_Stat {
        try _tagEOS_Stats_Stat(
            ApiVersion: ApiVersion,
            Name: pointerManager.managedPointerToBuffer(copyingArray: Name?.utf8CString),
            StartTime: try safeNumericCast(exactly: StartTime),
            EndTime: try safeNumericCast(exactly: EndTime),
            Value: try safeNumericCast(exactly: Value)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_Stat?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Name = String(cString: sdkObject.Name)
        self.StartTime = try safeNumericCast(exactly: sdkObject.StartTime)
        self.EndTime = try safeNumericCast(exactly: sdkObject.EndTime)
        self.Value = try safeNumericCast(exactly: sdkObject.Value)
    }
}
