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
     * - Parameter Options:  Structure containing the Epic Online Services Account ID and index being accessed
     * - Parameter OutStat:  The stat data for the given index, if it exists and is valid
     * 
     * @see EOS_Stats_Stat_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutStat
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the stat is not found
     */
    public func CopyStatByIndex(
        Options: SwiftEOS_Stats_CopyStatByIndexOptions,
        OutStat: inout SwiftEOS_Stats_Stat?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutStat, managedBy: pointerManager) { OutStat in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Stats_CopyStatByIndex(
                            Handle,
                            Options,
                            OutStat
                        ) } } } }
    }

    /**
     * Fetches a stat from cached stats by name. Use EOS_Stats_Stat_Release when finished with the data.
     * 
     * - Parameter Options:  Structure containing the Epic Online Services Account ID and name being accessed
     * - Parameter OutStat:  The stat data for the given name, if it exists and is valid
     * 
     * @see EOS_Stats_Stat_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutStat
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the stat is not found
     */
    public func CopyStatByName(
        Options: SwiftEOS_Stats_CopyStatByNameOptions,
        OutStat: inout SwiftEOS_Stats_Stat?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutStat, managedBy: pointerManager) { OutStat in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Stats_CopyStatByName(
                            Handle,
                            Options,
                            OutStat
                        ) } } } }
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
    public func GetStatsCount(
        Options: SwiftEOS_Stats_GetStatCountOptions
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
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter CompletionDelegate:  This function is called when the ingest stat operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_InvalidUser if target user ID is missing or incorrect
     */
    public func IngestStat(
        Options: SwiftEOS_Stats_IngestStatOptions,
        CompletionDelegate: @escaping (SwiftEOS_Stats_IngestStatCompleteCallbackInfo) -> Void
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
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  This function is called when the query player stats operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_InvalidUser if target user ID is missing or incorrect
     */
    public func QueryStats(
        Options: SwiftEOS_Stats_QueryStatsOptions,
        CompletionDelegate: @escaping (SwiftEOS_Stats_OnQueryStatsCompleteCallbackInfo) -> Void
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