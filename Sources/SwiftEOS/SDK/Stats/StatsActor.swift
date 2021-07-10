import Foundation
import EOSSDK
public class SwiftEOS_Stats_Actor: SwiftEOSActor {
    public let Handle: EOS_HStats

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HStats
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Fetches a stat from a given index. Use EOS_Stats_Stat_Release when finished with the data.
     * 
     * - Parameter TargetUserId:  The Product User ID of the user who owns the stat 
     * - Parameter StatIndex:  Index of the stat to retrieve from the cache 
     * 
     * @see EOS_Stats_Stat_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutStat
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the stat is not found
     */
    public func CopyStatByIndex(
        TargetUserId: EOS_ProductUserId?,
        StatIndex: Int
    ) throws -> SwiftEOS_Stats_Stat? {
        try ____CopyStatByIndex(.init(
                TargetUserId: TargetUserId,
                StatIndex: StatIndex
            ))
    }

    /**
     * Fetches a stat from cached stats by name. Use EOS_Stats_Stat_Release when finished with the data.
     * 
     * - Parameter TargetUserId:  The Product User ID of the user who owns the stat 
     * - Parameter Name:  Name of the stat to retrieve from the cache 
     * 
     * @see EOS_Stats_Stat_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutStat
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the stat is not found
     */
    public func CopyStatByName(
        TargetUserId: EOS_ProductUserId?,
        Name: String?
    ) throws -> SwiftEOS_Stats_Stat? {
        try ____CopyStatByName(.init(
                TargetUserId: TargetUserId,
                Name: Name
            ))
    }

    /**
     * Fetch the number of stats that are cached locally.
     * 
     * - Parameter TargetUserId:  The Product User ID for the user whose stats are being counted 
     * 
     * @see EOS_Stats_CopyStatByIndex
     * 
     * @return Number of stats or 0 if there is an error
     */
    public func GetStatsCount(
        TargetUserId: EOS_ProductUserId?
    ) throws -> Int {
        try ____GetStatsCount(.init(TargetUserId: TargetUserId))
    }

    /**
     * Ingest a stat by the amount specified in Options.
     * When the operation is complete and the delegate is triggered the stat will be uploaded to the backend to be processed.
     * The stat may not be updated immediately and an achievement using the stat may take a while to be unlocked once the stat has been uploaded.
     * 
     * - Parameter LocalUserId:  The Product User ID of the local user requesting the ingest.  Set to null for dedicated server. 
     * - Parameter Stats:  Stats to ingest. 
     * - Parameter StatsCount:  The number of stats to ingest, may not exceed EOS_STATS_MAX_INGEST_STATS. 
     * - Parameter TargetUserId:  The Product User ID for the user whose stat is being ingested. 
     * - Parameter CompletionDelegate:  This function is called when the ingest stat operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_InvalidUser if target user ID is missing or incorrect
     */
    public func IngestStat(
        LocalUserId: EOS_ProductUserId?,
        Stats: [SwiftEOS_Stats_IngestData]?,
        StatsCount: Int,
        TargetUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Stats_IngestStatCompleteCallbackInfo) -> Void
    ) throws {
        try ____IngestStat(
            .init(
                LocalUserId: LocalUserId,
                Stats: Stats,
                StatsCount: StatsCount,
                TargetUserId: TargetUserId
            ),
            CompletionDelegate
        )
    }

    /**
     * Query for a list of stats for a specific player.
     * 
     * - Parameter LocalUserId:  The Product User ID of the local user requesting the stats. Set to null for dedicated server. 
     * - Parameter StartTime:  If not EOS_STATS_TIME_UNDEFINED then this is the POSIX timestamp for start time (Optional). 
     * - Parameter EndTime:  If not EOS_STATS_TIME_UNDEFINED then this is the POSIX timestamp for end time (Optional). 
     * - Parameter StatNames:  An array of stat names to query for (Optional). 
     * - Parameter StatNamesCount:  The number of stat names included in query (Optional), may not exceed EOS_STATS_MAX_QUERY_STATS. 
     * - Parameter TargetUserId:  The Product User ID for the user whose stats are being retrieved 
     * - Parameter CompletionDelegate:  This function is called when the query player stats operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_InvalidUser if target user ID is missing or incorrect
     */
    public func QueryStats(
        LocalUserId: EOS_ProductUserId?,
        StartTime: Int,
        EndTime: Int,
        StatNames: [String]?,
        StatNamesCount: Int,
        TargetUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Stats_OnQueryStatsCompleteCallbackInfo) -> Void
    ) throws {
        try ____QueryStats(
            .init(
                LocalUserId: LocalUserId,
                StartTime: StartTime,
                EndTime: EndTime,
                StatNames: StatNames,
                StatNamesCount: StatNamesCount,
                TargetUserId: TargetUserId
            ),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_Stats_Actor {

    /**
     * Fetches a stat from a given index. Use EOS_Stats_Stat_Release when finished with the data.
     * 
     * - Parameter Options:  Structure containing the Epic Online Services Account ID and index being accessed
     * 
     * @see EOS_Stats_Stat_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutStat
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the stat is not found
     */
    private func ____CopyStatByIndex(
        _ Options: SwiftEOS_Stats_CopyStatByIndexOptions
    ) throws -> SwiftEOS_Stats_Stat? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutStat in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Stats_CopyStatByIndex(
                                Handle,
                                Options,
                                OutStat
                            ) } } },
                release: EOS_Stats_Stat_Release
            ) }
    }

    /**
     * Fetches a stat from cached stats by name. Use EOS_Stats_Stat_Release when finished with the data.
     * 
     * - Parameter Options:  Structure containing the Epic Online Services Account ID and name being accessed
     * 
     * @see EOS_Stats_Stat_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutStat
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the stat is not found
     */
    private func ____CopyStatByName(
        _ Options: SwiftEOS_Stats_CopyStatByNameOptions
    ) throws -> SwiftEOS_Stats_Stat? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutStat in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Stats_CopyStatByName(
                                Handle,
                                Options,
                                OutStat
                            ) } } },
                release: EOS_Stats_Stat_Release
            ) }
    }

    /**
     * Fetch the number of stats that are cached locally.
     * 
     * - Parameter Options:  The Options associated with retrieving the stat count
     * 
     * @see EOS_Stats_CopyStatByIndex
     * 
     * @return Number of stats or 0 if there is an error
     */
    private func ____GetStatsCount(
        _ Options: SwiftEOS_Stats_GetStatCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Stats_GetStatsCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Ingest a stat by the amount specified in Options.
     * When the operation is complete and the delegate is triggered the stat will be uploaded to the backend to be processed.
     * The stat may not be updated immediately and an achievement using the stat may take a while to be unlocked once the stat has been uploaded.
     * 
     * - Parameter Options:  Structure containing information about the stat we're ingesting.
     * - Parameter CompletionDelegate:  This function is called when the ingest stat operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_InvalidUser if target user ID is missing or incorrect
     */
    private func ____IngestStat(
        _ Options: SwiftEOS_Stats_IngestStatOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Stats_IngestStatCompleteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Stats_IngestStat(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Stats_IngestStatCompleteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Query for a list of stats for a specific player.
     * 
     * - Parameter Options:  Structure containing information about the player whose stats we're retrieving.
     * - Parameter CompletionDelegate:  This function is called when the query player stats operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_InvalidUser if target user ID is missing or incorrect
     */
    private func ____QueryStats(
        _ Options: SwiftEOS_Stats_QueryStatsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Stats_OnQueryStatsCompleteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Stats_QueryStats(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Stats_OnQueryStatsCompleteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
