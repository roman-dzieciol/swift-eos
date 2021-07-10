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
     * - Parameter LeaderboardIndex:  Index of the leaderboard definition to retrieve from the cache 
     * 
     * - SeeAlso:  EOS_Leaderboards_Definition_Release
     * 
     * - Returns:  EOS_Success if the information is available and passed out in OutLeaderboardDefinition
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard is not found
     */
    public func CopyLeaderboardDefinitionByIndex(
        LeaderboardIndex: Int
    ) throws -> SwiftEOS_Leaderboards_Definition? {
        try ____CopyLeaderboardDefinitionByIndex(.init(LeaderboardIndex: LeaderboardIndex))
    }

    /**
     * Fetches a leaderboard definition from the cache using a leaderboard ID.
     * 
     * - Parameter LeaderboardId:  The ID of the leaderboard whose definition you want to copy from the cache 
     * 
     * - SeeAlso:  EOS_Leaderboards_Definition_Release
     * 
     * - Returns:  EOS_Success if the information is available and passed out in OutLeaderboardDefinition
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard data is not found
     */
    public func CopyLeaderboardDefinitionByLeaderboardId(
        LeaderboardId: String?
    ) throws -> SwiftEOS_Leaderboards_Definition? {
        try ____CopyLeaderboardDefinitionByLeaderboardId(.init(LeaderboardId: LeaderboardId))
    }

    /**
     * Fetches a leaderboard record from a given index.
     * 
     * - Parameter LeaderboardRecordIndex:  Index of the leaderboard record to retrieve from the cache 
     * 
     * - SeeAlso:  EOS_Leaderboards_LeaderboardRecord_Release
     * 
     * - Returns:  EOS_Success if the leaderboard record is available and passed out in OutLeaderboardRecord
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard is not found
     */
    public func CopyLeaderboardRecordByIndex(
        LeaderboardRecordIndex: Int
    ) throws -> SwiftEOS_Leaderboards_LeaderboardRecord? {
        try ____CopyLeaderboardRecordByIndex(.init(LeaderboardRecordIndex: LeaderboardRecordIndex))
    }

    /**
     * Fetches a leaderboard record from a given user ID.
     * 
     * - Parameter UserId:  Leaderboard data will be copied from the cache if it relates to the user matching this Product User ID 
     * 
     * - SeeAlso:  EOS_Leaderboards_LeaderboardRecord_Release
     * 
     * - Returns:  EOS_Success if the leaderboard record is available and passed out in OutLeaderboardRecord
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard data is not found
     */
    public func CopyLeaderboardRecordByUserId(
        UserId: EOS_ProductUserId?
    ) throws -> SwiftEOS_Leaderboards_LeaderboardRecord? {
        try ____CopyLeaderboardRecordByUserId(.init(UserId: UserId))
    }

    /**
     * Fetches leaderboard user score from a given index.
     * 
     * - Parameter LeaderboardUserScoreIndex:  Index of the sorted leaderboard user score to retrieve from the cache. 
     * - Parameter StatName:  Name of the stat used to rank the leaderboard. 
     * 
     * - SeeAlso:  EOS_Leaderboards_LeaderboardUserScore_Release
     * 
     * - Returns:  EOS_Success if the leaderboard scores are available and passed out in OutLeaderboardUserScore
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard user scores are not found
     */
    public func CopyLeaderboardUserScoreByIndex(
        LeaderboardUserScoreIndex: Int,
        StatName: String?
    ) throws -> SwiftEOS_Leaderboards_LeaderboardUserScore? {
        try ____CopyLeaderboardUserScoreByIndex(.init(
                LeaderboardUserScoreIndex: LeaderboardUserScoreIndex,
                StatName: StatName
            ))
    }

    /**
     * Fetches leaderboard user score from a given user ID.
     * 
     * - Parameter UserId:  The Product User ID to look for when copying leaderboard score data from the cache 
     * - Parameter StatName:  The name of the stat that is used to rank this leaderboard 
     * 
     * - SeeAlso:  EOS_Leaderboards_LeaderboardUserScore_Release
     * 
     * - Returns:  EOS_Success if the leaderboard scores are available and passed out in OutLeaderboardUserScore
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the leaderboard user scores are not found
     */
    public func CopyLeaderboardUserScoreByUserId(
        UserId: EOS_ProductUserId?,
        StatName: String?
    ) throws -> SwiftEOS_Leaderboards_LeaderboardUserScore? {
        try ____CopyLeaderboardUserScoreByUserId(.init(
                UserId: UserId,
                StatName: StatName
            ))
    }

    /**
     * Fetch the number of leaderboards definitions that are cached locally.
     * 
     * 
     * - SeeAlso:  EOS_Leaderboards_CopyLeaderboardDefinitionByIndex
     * - SeeAlso:  EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId
     * 
     * - Returns:  Number of leaderboards or 0 if there is an error
     */
    public func GetLeaderboardDefinitionCount() throws -> Int {
        try ____GetLeaderboardDefinitionCount()
    }

    /**
     * Fetch the number of leaderboard records that are cached locally.
     * 
     * 
     * - SeeAlso:  EOS_Leaderboards_CopyLeaderboardRecordByIndex
     * - SeeAlso:  EOS_Leaderboards_CopyLeaderboardRecordByUserId
     * 
     * - Returns:  Number of leaderboard records or 0 if there is an error
     */
    public func GetLeaderboardRecordCount() throws -> Int {
        try ____GetLeaderboardRecordCount()
    }

    /**
     * Fetch the number of leaderboard user scores that are cached locally.
     * 
     * - Parameter StatName:  Name of stat used to rank leaderboard. 
     * 
     * - SeeAlso:  EOS_Leaderboards_CopyLeaderboardUserScoreByIndex
     * - SeeAlso:  EOS_Leaderboards_CopyLeaderboardUserScoreByUserId
     * 
     * - Returns:  Number of leaderboard records or 0 if there is an error
     */
    public func GetLeaderboardUserScoreCount(
        StatName: String?
    ) throws -> Int {
        try ____GetLeaderboardUserScoreCount(.init(StatName: StatName))
    }

    /**
     * Query for a list of existing leaderboards definitions including their attributes.
     * 
     * - Parameter StartTime:  An optional POSIX timestamp for the leaderboard's start time, or EOS_LEADERBOARDS_TIME_UNDEFINED 
     * - Parameter EndTime:  An optional POSIX timestamp for the leaderboard's end time, or EOS_LEADERBOARDS_TIME_UNDEFINED 
     * - Parameter LocalUserId:  Product User ID for user who is querying definitions.
     * Must be set when using a client policy that requires a valid logged in user.
     * Not used for Dedicated Server where no user is available.
     * - Parameter CompletionDelegate:  This function is called when the query operation completes.
     * 
     * - Returns:  EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func QueryLeaderboardDefinitions(
        StartTime: Int,
        EndTime: Int,
        LocalUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo) -> Void
    ) throws {
        try ____QueryLeaderboardDefinitions(
            .init(
                StartTime: StartTime,
                EndTime: EndTime,
                LocalUserId: LocalUserId
            ),
            CompletionDelegate
        )
    }

    /**
     * Retrieves top leaderboard records by rank in the leaderboard matching the given leaderboard ID.
     * 
     * - Parameter LeaderboardId:  The ID of the leaderboard whose information you want to retrieve. 
     * - Parameter LocalUserId:  Product User ID for user who is querying ranks.
     * Must be set when using a client policy that requires a valid logged in user.
     * Not used for Dedicated Server where no user is available.
     * - Parameter CompletionDelegate:  This function is called when the query operation completes.
     * 
     * - Returns:  EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func QueryLeaderboardRanks(
        LeaderboardId: String?,
        LocalUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Leaderboards_OnQueryLeaderboardRanksCompleteCallbackInfo) -> Void
    ) throws {
        try ____QueryLeaderboardRanks(
            .init(
                LeaderboardId: LeaderboardId,
                LocalUserId: LocalUserId
            ),
            CompletionDelegate
        )
    }

    /**
     * Query for a list of scores for a given list of users.
     * 
     * - Parameter UserIds:  An array of Product User IDs indicating the users whose scores you want to retrieve 
     * 
     * - Note: ``EOS/_tagEOS_Leaderboards_QueryLeaderboardUserScoresOptions/UserIdsCount``:
     * The number of users included in query 
     * - Parameter StatInfo:  The stats to be collected, along with the sorting method to use when determining rank order for each stat 
     * 
     * - Note: ``EOS/_tagEOS_Leaderboards_QueryLeaderboardUserScoresOptions/StatInfoCount``:
     * The number of stats to query 
     * - Parameter StartTime:  An optional POSIX timestamp, or EOS_LEADERBOARDS_TIME_UNDEFINED; results will only include scores made after this time 
     * - Parameter EndTime:  An optional POSIX timestamp, or EOS_LEADERBOARDS_TIME_UNDEFINED; results will only include scores made before this time 
     * - Parameter LocalUserId:  Product User ID for user who is querying user scores.
     * Must be set when using a client policy that requires a valid logged in user.
     * Not used for Dedicated Server where no user is available.
     * - Parameter CompletionDelegate:  This function is called when the query operation completes.
     * 
     * - Returns:  EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func QueryLeaderboardUserScores(
        UserIds: [EOS_ProductUserId]?,
        StatInfo: [SwiftEOS_Leaderboards_UserScoresQueryStatInfo]?,
        StartTime: Int,
        EndTime: Int,
        LocalUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Leaderboards_OnQueryLeaderboardUserScoresCompleteCallbackInfo) -> Void
    ) throws {
        try ____QueryLeaderboardUserScores(
            .init(
                UserIds: UserIds,
                StatInfo: StatInfo,
                StartTime: StartTime,
                EndTime: EndTime,
                LocalUserId: LocalUserId
            ),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_Leaderboards_Actor {

    /**
     * Fetches a leaderboard definition from the cache using an index.
     * 
     * - Parameter Options:  Structure containing the index being accessed.
     * 
     * - SeeAlso:  EOS_Leaderboards_Definition_Release
     * 
     * - Returns:  EOS_Success if the information is available and passed out in OutLeaderboardDefinition
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
     * 
     * - SeeAlso:  EOS_Leaderboards_Definition_Release
     * 
     * - Returns:  EOS_Success if the information is available and passed out in OutLeaderboardDefinition
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
     * 
     * - SeeAlso:  EOS_Leaderboards_LeaderboardRecord_Release
     * 
     * - Returns:  EOS_Success if the leaderboard record is available and passed out in OutLeaderboardRecord
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
     * 
     * - SeeAlso:  EOS_Leaderboards_LeaderboardRecord_Release
     * 
     * - Returns:  EOS_Success if the leaderboard record is available and passed out in OutLeaderboardRecord
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
     * 
     * - SeeAlso:  EOS_Leaderboards_LeaderboardUserScore_Release
     * 
     * - Returns:  EOS_Success if the leaderboard scores are available and passed out in OutLeaderboardUserScore
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
     * 
     * - SeeAlso:  EOS_Leaderboards_LeaderboardUserScore_Release
     * 
     * - Returns:  EOS_Success if the leaderboard scores are available and passed out in OutLeaderboardUserScore
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
     * 
     * - SeeAlso:  EOS_Leaderboards_CopyLeaderboardDefinitionByIndex
     * - SeeAlso:  EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId
     * 
     * - Returns:  Number of leaderboards or 0 if there is an error
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
     * 
     * - SeeAlso:  EOS_Leaderboards_CopyLeaderboardRecordByIndex
     * - SeeAlso:  EOS_Leaderboards_CopyLeaderboardRecordByUserId
     * 
     * - Returns:  Number of leaderboard records or 0 if there is an error
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
     * - SeeAlso:  EOS_Leaderboards_CopyLeaderboardUserScoreByIndex
     * - SeeAlso:  EOS_Leaderboards_CopyLeaderboardUserScoreByUserId
     * 
     * - Returns:  Number of leaderboard records or 0 if there is an error
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
     * - Parameter CompletionDelegate:  This function is called when the query operation completes.
     * 
     * - Returns:  EOS_Success if the operation completes successfully
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
     * - Parameter CompletionDelegate:  This function is called when the query operation completes.
     * 
     * - Returns:  EOS_Success if the operation completes successfully
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
     * - Parameter CompletionDelegate:  This function is called when the query operation completes.
     * 
     * - Returns:  EOS_Success if the operation completes successfully
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
