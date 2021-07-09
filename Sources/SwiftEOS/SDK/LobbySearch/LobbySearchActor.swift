import Foundation
import EOSSDK
public class SwiftEOS_LobbySearch_Actor: SwiftEOSActor {
    public let Handle: EOS_HLobbySearch

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HLobbySearch
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_LobbySearch_Release(Handle)
    }

    /**
     * EOS_LobbySearch_CopySearchResultByIndex is used to immediately retrieve a handle to the lobby information from a given search result.
     * If the call returns an EOS_Success result, the out parameter, OutLobbyDetailsHandle, must be passed to EOS_LobbyDetails_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutLobbyDetailsHandle:  out parameter used to receive the lobby details handle
     * 
     * @return EOS_Success if the information is available and passed out in OutLobbyDetailsHandle
     *         EOS_InvalidParameters if you pass an invalid index or a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     * 
     * @see EOS_LobbySearch_CopySearchResultByIndexOptions
     * @see EOS_LobbyDetails_Release
     */
    public func CopySearchResultByIndex(
        Options: SwiftEOS_LobbySearch_CopySearchResultByIndexOptions
    ) throws -> EOS_HLobbyDetails? {
        try withPointerManager { pointerManager in
            try withPointeeReturned(managedBy: pointerManager) { OutLobbyDetailsHandle in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_LobbySearch_CopySearchResultByIndex(
                            Handle,
                            Options,
                            OutLobbyDetailsHandle
                        ) } } } }
    }

    /**
     * Find lobbies matching the search criteria setup via this lobby search handle.
     * When the operation completes, this handle will have the search results that can be parsed
     * 
     * - Parameter Options:  Structure containing information about the search criteria to use
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the search operation completes, either successfully or in error
     * 
     * @return EOS_Success if the find operation completes successfully
     *         EOS_NotFound if searching for an individual lobby by lobby ID or target user ID returns no results
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func Find(
        Options: SwiftEOS_LobbySearch_FindOptions,
        CompletionDelegate: @escaping (SwiftEOS_LobbySearch_FindCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_LobbySearch_Find(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_LobbySearch_FindCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Get the number of search results found by the search parameters in this search
     * 
     * - Parameter Options:  Options associated with the search count
     * 
     * @return return the number of search results found by the query or 0 if search is not complete
     */
    public func GetSearchResultCount(
        Options: SwiftEOS_LobbySearch_GetSearchResultCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_LobbySearch_GetSearchResultCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Remove a parameter from the array of search criteria.
     * 
     * - Parameter Options:  a search parameter key name to remove
     * 
     * @return EOS_Success if removing this search parameter was successful
     *         EOS_InvalidParameters if the search key is invalid or null
     * 		   EOS_NotFound if the parameter was not a part of the search criteria
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     */
    public func RemoveParameter(
        Options: SwiftEOS_LobbySearch_RemoveParameterOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbySearch_RemoveParameter(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Set a lobby ID to find and will return at most one search result.  Setting TargetUserId or SearchParameters will result in EOS_LobbySearch_Find failing
     * 
     * - Parameter Options:  A specific lobby ID for which to search
     * 
     * @return EOS_Success if setting this lobby ID was successful
     *         EOS_InvalidParameters if the lobby ID is invalid or null
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     */
    public func SetLobbyId(
        Options: SwiftEOS_LobbySearch_SetLobbyIdOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbySearch_SetLobbyId(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Set the maximum number of search results to return in the query, can't be more than EOS_LOBBY_MAX_SEARCH_RESULTS
     * 
     * - Parameter Options:  maximum number of search results to return in the query
     * 
     * @return EOS_Success if setting the max results was successful
     *         EOS_InvalidParameters if the number of results requested is invalid
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     */
    public func SetMaxResults(
        Options: SwiftEOS_LobbySearch_SetMaxResultsOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbySearch_SetMaxResults(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Add a parameter to an array of search criteria combined via an implicit AND operator.  Setting LobbyId or TargetUserId will result in EOS_LobbySearch_Find failing
     * 
     * - Parameter Options:  a search parameter and its comparison op
     * 
     * @return EOS_Success if setting this search parameter was successful
     *         EOS_InvalidParameters if the search criteria is invalid or null
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     * 
     * @see EOS_Lobby_AttributeData
     * @see EOS_EComparisonOp
     */
    public func SetParameter(
        Options: SwiftEOS_LobbySearch_SetParameterOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbySearch_SetParameter(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Set a target user ID to find.  Setting LobbyId or SearchParameters will result in EOS_LobbySearch_Find failing
     * 
     * @note a search result will only be found if this user is in a public lobby
     * 
     * - Parameter Options:  a specific target user ID to find
     * 
     * @return EOS_Success if setting this target user ID was successful
     *         EOS_InvalidParameters if the target user ID is invalid or null
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     */
    public func SetTargetUserId(
        Options: SwiftEOS_LobbySearch_SetTargetUserIdOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbySearch_SetTargetUserId(
                        Handle,
                        Options
                    ) } } }
    }
}
