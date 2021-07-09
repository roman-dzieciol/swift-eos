import Foundation
import EOSSDK
public class SwiftEOS_Leaderboards_Actor: SwiftEOSActor {
    public let Handle: EOS_HLeaderboards

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HLeaderboards
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Fetches a leaderboard definition from the cache using an index.
     * 
     * - Parameter Options:  Structure containing the index being accessed.
     * - Parameter OutLeaderboardDefinition:  The leaderboard data for the given index, if it exists and is valid, use EOS_Leaderboards_Definition_Release when finished.
     * 
     * @see EOS_Leaderboards_Definition_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutLeaderboardDefinition
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard is not found
     */
    public func CopyLeaderboardDefinitionByIndex(
        Options: SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByIndexOptions
    ) throws -> SwiftEOS_Leaderboards_Definition? {
        try ____CopyLeaderboardDefinitionByIndex(Options)
    }

    /**
     * Fetches a leaderboard definition from the cache using a leaderboard ID.
     * 
     * - Parameter Options:  Structure containing the leaderboard ID being accessed.
     * - Parameter OutLeaderboardDefinition:  The leaderboard definition for the given leaderboard ID, if it exists and is valid, use EOS_Leaderboards_Definition_Release when finished.
     * 
     * @see EOS_Leaderboards_Definition_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutLeaderboardDefinition
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard data is not found
     */
    public func CopyLeaderboardDefinitionByLeaderboardId(
        Options: SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdOptions
    ) throws -> SwiftEOS_Leaderboards_Definition? {
        try ____CopyLeaderboardDefinitionByLeaderboardId(Options)
    }

    /**
     * Fetches a leaderboard record from a given index.
     * 
     * - Parameter Options:  Structure containing the index being accessed.
     * - Parameter OutLeaderboardRecord:  The leaderboard record for the given index, if it exists and is valid, use EOS_Leaderboards_LeaderboardRecord_Release when finished.
     * 
     * @see EOS_Leaderboards_LeaderboardRecord_Release
     * 
     * @return EOS_Success if the leaderboard record is available and passed out in OutLeaderboardRecord
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard is not found
     */
    public func CopyLeaderboardRecordByIndex(
        Options: SwiftEOS_Leaderboards_CopyLeaderboardRecordByIndexOptions
    ) throws -> SwiftEOS_Leaderboards_LeaderboardRecord? {
        try ____CopyLeaderboardRecordByIndex(Options)
    }

    /**
     * Fetches a leaderboard record from a given user ID.
     * 
     * - Parameter Options:  Structure containing the user ID being accessed.
     * - Parameter OutLeaderboardRecord:  The leaderboard record for the given user ID, if it exists and is valid, use EOS_Leaderboards_LeaderboardRecord_Release when finished.
     * 
     * @see EOS_Leaderboards_LeaderboardRecord_Release
     * 
     * @return EOS_Success if the leaderboard record is available and passed out in OutLeaderboardRecord
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard data is not found
     */
    public func CopyLeaderboardRecordByUserId(
        Options: SwiftEOS_Leaderboards_CopyLeaderboardRecordByUserIdOptions
    ) throws -> SwiftEOS_Leaderboards_LeaderboardRecord? {
        try ____CopyLeaderboardRecordByUserId(Options)
    }

    /**
     * Fetches leaderboard user score from a given index.
     * 
     * - Parameter Options:  Structure containing the index being accessed.
     * - Parameter OutLeaderboardUserScore:  The leaderboard user score for the given index, if it exists and is valid, use EOS_Leaderboards_LeaderboardUserScore_Release when finished.
     * 
     * @see EOS_Leaderboards_LeaderboardUserScore_Release
     * 
     * @return EOS_Success if the leaderboard scores are available and passed out in OutLeaderboardUserScore
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard user scores are not found
     */
    public func CopyLeaderboardUserScoreByIndex(
        Options: SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions
    ) throws -> SwiftEOS_Leaderboards_LeaderboardUserScore? {
        try ____CopyLeaderboardUserScoreByIndex(Options)
    }

    /**
     * Fetches leaderboard user score from a given user ID.
     * 
     * - Parameter Options:  Structure containing the user ID being accessed.
     * - Parameter OutLeaderboardUserScore:  The leaderboard user score for the given user ID, if it exists and is valid, use EOS_Leaderboards_LeaderboardUserScore_Release when finished.
     * 
     * @see EOS_Leaderboards_LeaderboardUserScore_Release
     * 
     * @return EOS_Success if the leaderboard scores are available and passed out in OutLeaderboardUserScore
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard user scores are not found
     */
    public func CopyLeaderboardUserScoreByUserId(
        Options: SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdOptions
    ) throws -> SwiftEOS_Leaderboards_LeaderboardUserScore? {
        try ____CopyLeaderboardUserScoreByUserId(Options)
    }

    /**
     * Fetch the number of leaderboards definitions that are cached locally.
     * 
     * - Parameter Options:  The Options associated with retrieving the leaderboard count.
     * 
     * @see EOS_Leaderboards_CopyLeaderboardDefinitionByIndex
     * @see EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId
     * 
     * @return Number of leaderboards or 0 if there is an error
     */
    public func GetLeaderboardDefinitionCount() throws -> Int {
        try ____GetLeaderboardDefinitionCount()
    }

    /**
     * Fetch the number of leaderboard records that are cached locally.
     * 
     * - Parameter Options:  The Options associated with retrieving the leaderboard record count.
     * 
     * @see EOS_Leaderboards_CopyLeaderboardRecordByIndex
     * @see EOS_Leaderboards_CopyLeaderboardRecordByUserId
     * 
     * @return Number of leaderboard records or 0 if there is an error
     */
    public func GetLeaderboardRecordCount() throws -> Int {
        try ____GetLeaderboardRecordCount()
    }

    /**
     * Fetch the number of leaderboard user scores that are cached locally.
     * 
     * - Parameter Options:  The Options associated with retrieving the leaderboard user scores count.
     * 
     * @see EOS_Leaderboards_CopyLeaderboardUserScoreByIndex
     * @see EOS_Leaderboards_CopyLeaderboardUserScoreByUserId
     * 
     * @return Number of leaderboard records or 0 if there is an error
     */
    public func GetLeaderboardUserScoreCount(
        Options: SwiftEOS_Leaderboards_GetLeaderboardUserScoreCountOptions
    ) throws -> Int {
        try ____GetLeaderboardUserScoreCount(Options)
    }

    /**
     * Query for a list of existing leaderboards definitions including their attributes.
     * 
     * - Parameter Options:  Structure containing information about the application whose leaderboard definitions we're retrieving.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter CompletionDelegate:  This function is called when the query operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func QueryLeaderboardDefinitions(
        Options: SwiftEOS_Leaderboards_QueryLeaderboardDefinitionsOptions,
        CompletionDelegate: @escaping (SwiftEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo) -> Void
    ) throws {
        try ____QueryLeaderboardDefinitions(
            Options,
            CompletionDelegate
        )
    }

    /**
     * Retrieves top leaderboard records by rank in the leaderboard matching the given leaderboard ID.
     * 
     * - Parameter Options:  Structure containing information about the leaderboard records we're retrieving.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter CompletionDelegate:  This function is called when the query operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func QueryLeaderboardRanks(
        Options: SwiftEOS_Leaderboards_QueryLeaderboardRanksOptions,
        CompletionDelegate: @escaping (SwiftEOS_Leaderboards_OnQueryLeaderboardRanksCompleteCallbackInfo) -> Void
    ) throws {
        try ____QueryLeaderboardRanks(
            Options,
            CompletionDelegate
        )
    }

    /**
     * Query for a list of scores for a given list of users.
     * 
     * - Parameter Options:  Structure containing information about the users whose scores we're retrieving.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter CompletionDelegate:  This function is called when the query operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func QueryLeaderboardUserScores(
        Options: SwiftEOS_Leaderboards_QueryLeaderboardUserScoresOptions,
        CompletionDelegate: @escaping (SwiftEOS_Leaderboards_OnQueryLeaderboardUserScoresCompleteCallbackInfo) -> Void
    ) throws {
        try ____QueryLeaderboardUserScores(
            Options,
            CompletionDelegate
        )
    }
}

extension SwiftEOS_Leaderboards_Actor {

    /**
     * Fetches a leaderboard definition from the cache using an index.
     * 
     * - Parameter Options:  Structure containing the index being accessed.
     * - Parameter OutLeaderboardDefinition:  The leaderboard data for the given index, if it exists and is valid, use EOS_Leaderboards_Definition_Release when finished.
     * 
     * @see EOS_Leaderboards_Definition_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutLeaderboardDefinition
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard is not found
     */
    private func ____CopyLeaderboardDefinitionByIndex(
        _ Options: SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByIndexOptions
    ) throws -> SwiftEOS_Leaderboards_Definition? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutLeaderboardDefinition in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Leaderboards_CopyLeaderboardDefinitionByIndex(
                                Handle,
                                Options,
                                OutLeaderboardDefinition
                            ) } } },
                release: EOS_Leaderboards_Definition_Release
            ) }
    }

    /**
     * Fetches a leaderboard definition from the cache using a leaderboard ID.
     * 
     * - Parameter Options:  Structure containing the leaderboard ID being accessed.
     * - Parameter OutLeaderboardDefinition:  The leaderboard definition for the given leaderboard ID, if it exists and is valid, use EOS_Leaderboards_Definition_Release when finished.
     * 
     * @see EOS_Leaderboards_Definition_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutLeaderboardDefinition
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard data is not found
     */
    private func ____CopyLeaderboardDefinitionByLeaderboardId(
        _ Options: SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdOptions
    ) throws -> SwiftEOS_Leaderboards_Definition? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutLeaderboardDefinition in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId(
                                Handle,
                                Options,
                                OutLeaderboardDefinition
                            ) } } },
                release: EOS_Leaderboards_Definition_Release
            ) }
    }

    /**
     * Fetches a leaderboard record from a given index.
     * 
     * - Parameter Options:  Structure containing the index being accessed.
     * - Parameter OutLeaderboardRecord:  The leaderboard record for the given index, if it exists and is valid, use EOS_Leaderboards_LeaderboardRecord_Release when finished.
     * 
     * @see EOS_Leaderboards_LeaderboardRecord_Release
     * 
     * @return EOS_Success if the leaderboard record is available and passed out in OutLeaderboardRecord
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard is not found
     */
    private func ____CopyLeaderboardRecordByIndex(
        _ Options: SwiftEOS_Leaderboards_CopyLeaderboardRecordByIndexOptions
    ) throws -> SwiftEOS_Leaderboards_LeaderboardRecord? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutLeaderboardRecord in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Leaderboards_CopyLeaderboardRecordByIndex(
                                Handle,
                                Options,
                                OutLeaderboardRecord
                            ) } } },
                release: EOS_Leaderboards_LeaderboardRecord_Release
            ) }
    }

    /**
     * Fetches a leaderboard record from a given user ID.
     * 
     * - Parameter Options:  Structure containing the user ID being accessed.
     * - Parameter OutLeaderboardRecord:  The leaderboard record for the given user ID, if it exists and is valid, use EOS_Leaderboards_LeaderboardRecord_Release when finished.
     * 
     * @see EOS_Leaderboards_LeaderboardRecord_Release
     * 
     * @return EOS_Success if the leaderboard record is available and passed out in OutLeaderboardRecord
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard data is not found
     */
    private func ____CopyLeaderboardRecordByUserId(
        _ Options: SwiftEOS_Leaderboards_CopyLeaderboardRecordByUserIdOptions
    ) throws -> SwiftEOS_Leaderboards_LeaderboardRecord? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutLeaderboardRecord in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Leaderboards_CopyLeaderboardRecordByUserId(
                                Handle,
                                Options,
                                OutLeaderboardRecord
                            ) } } },
                release: EOS_Leaderboards_LeaderboardRecord_Release
            ) }
    }

    /**
     * Fetches leaderboard user score from a given index.
     * 
     * - Parameter Options:  Structure containing the index being accessed.
     * - Parameter OutLeaderboardUserScore:  The leaderboard user score for the given index, if it exists and is valid, use EOS_Leaderboards_LeaderboardUserScore_Release when finished.
     * 
     * @see EOS_Leaderboards_LeaderboardUserScore_Release
     * 
     * @return EOS_Success if the leaderboard scores are available and passed out in OutLeaderboardUserScore
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard user scores are not found
     */
    private func ____CopyLeaderboardUserScoreByIndex(
        _ Options: SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByIndexOptions
    ) throws -> SwiftEOS_Leaderboards_LeaderboardUserScore? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutLeaderboardUserScore in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Leaderboards_CopyLeaderboardUserScoreByIndex(
                                Handle,
                                Options,
                                OutLeaderboardUserScore
                            ) } } },
                release: EOS_Leaderboards_LeaderboardUserScore_Release
            ) }
    }

    /**
     * Fetches leaderboard user score from a given user ID.
     * 
     * - Parameter Options:  Structure containing the user ID being accessed.
     * - Parameter OutLeaderboardUserScore:  The leaderboard user score for the given user ID, if it exists and is valid, use EOS_Leaderboards_LeaderboardUserScore_Release when finished.
     * 
     * @see EOS_Leaderboards_LeaderboardUserScore_Release
     * 
     * @return EOS_Success if the leaderboard scores are available and passed out in OutLeaderboardUserScore
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard user scores are not found
     */
    private func ____CopyLeaderboardUserScoreByUserId(
        _ Options: SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdOptions
    ) throws -> SwiftEOS_Leaderboards_LeaderboardUserScore? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutLeaderboardUserScore in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Leaderboards_CopyLeaderboardUserScoreByUserId(
                                Handle,
                                Options,
                                OutLeaderboardUserScore
                            ) } } },
                release: EOS_Leaderboards_LeaderboardUserScore_Release
            ) }
    }

    /**
     * Fetch the number of leaderboards definitions that are cached locally.
     * 
     * - Parameter Options:  The Options associated with retrieving the leaderboard count.
     * 
     * @see EOS_Leaderboards_CopyLeaderboardDefinitionByIndex
     * @see EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId
     * 
     * @return Number of leaderboards or 0 if there is an error
     */
    private func ____GetLeaderboardDefinitionCount() throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Leaderboards_GetLeaderboardDefinitionCountOptions(), managedBy: pointerManager) { Options in
                        EOS_Leaderboards_GetLeaderboardDefinitionCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Fetch the number of leaderboard records that are cached locally.
     * 
     * - Parameter Options:  The Options associated with retrieving the leaderboard record count.
     * 
     * @see EOS_Leaderboards_CopyLeaderboardRecordByIndex
     * @see EOS_Leaderboards_CopyLeaderboardRecordByUserId
     * 
     * @return Number of leaderboard records or 0 if there is an error
     */
    private func ____GetLeaderboardRecordCount() throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Leaderboards_GetLeaderboardRecordCountOptions(), managedBy: pointerManager) { Options in
                        EOS_Leaderboards_GetLeaderboardRecordCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Fetch the number of leaderboard user scores that are cached locally.
     * 
     * - Parameter Options:  The Options associated with retrieving the leaderboard user scores count.
     * 
     * @see EOS_Leaderboards_CopyLeaderboardUserScoreByIndex
     * @see EOS_Leaderboards_CopyLeaderboardUserScoreByUserId
     * 
     * @return Number of leaderboard records or 0 if there is an error
     */
    private func ____GetLeaderboardUserScoreCount(
        _ Options: SwiftEOS_Leaderboards_GetLeaderboardUserScoreCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Leaderboards_GetLeaderboardUserScoreCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Query for a list of existing leaderboards definitions including their attributes.
     * 
     * - Parameter Options:  Structure containing information about the application whose leaderboard definitions we're retrieving.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter CompletionDelegate:  This function is called when the query operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    private func ____QueryLeaderboardDefinitions(
        _ Options: SwiftEOS_Leaderboards_QueryLeaderboardDefinitionsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Leaderboards_QueryLeaderboardDefinitions(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Retrieves top leaderboard records by rank in the leaderboard matching the given leaderboard ID.
     * 
     * - Parameter Options:  Structure containing information about the leaderboard records we're retrieving.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter CompletionDelegate:  This function is called when the query operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    private func ____QueryLeaderboardRanks(
        _ Options: SwiftEOS_Leaderboards_QueryLeaderboardRanksOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Leaderboards_OnQueryLeaderboardRanksCompleteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Leaderboards_QueryLeaderboardRanks(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Leaderboards_OnQueryLeaderboardRanksCompleteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Query for a list of scores for a given list of users.
     * 
     * - Parameter Options:  Structure containing information about the users whose scores we're retrieving.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter CompletionDelegate:  This function is called when the query operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    private func ____QueryLeaderboardUserScores(
        _ Options: SwiftEOS_Leaderboards_QueryLeaderboardUserScoresOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Leaderboards_OnQueryLeaderboardUserScoresCompleteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Leaderboards_QueryLeaderboardUserScores(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Leaderboards_OnQueryLeaderboardUserScoresCompleteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
