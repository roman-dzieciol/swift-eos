import Foundation
import EOSSDK

public class SwiftEOS_LobbySearch_Actor: SwiftEOSActor {
    public let Handle: EOS_HLobbySearch?

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HLobbySearch?
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_LobbySearch_Release(Handle)
    }

    /**
    `EOS_LobbySearch_CopySearchResultByIndex` is used to immediately retrieve a handle to the lobby information from a given search result.
    If the call returns an `EOS_Success` result, the out parameter, OutLobbyDetailsHandle, must be passed to `EOS_LobbyDetails_Release` to release the memory associated with it.

    - Parameter LobbyIndex: The index of the lobby to retrieve within the completed search query
    - SeeAlso: `EOS_LobbySearch_GetSearchResultCount`
    - Throws: `EOS_InvalidParameters` if you pass an invalid index or a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_LobbySearch_CopySearchResultByIndexOptions`
    - SeeAlso: `EOS_LobbyDetails_Release`
    - Returns: out parameter used to receive the lobby details handle
    */
    public func CopySearchResultByIndex(
        LobbyIndex: Int
    ) throws -> EOS_HLobbyDetails {
        try ____CopySearchResultByIndex(.init(LobbyIndex: LobbyIndex))
    }

    /**
    Find lobbies matching the search criteria setup via this lobby search handle.
    When the operation completes, this handle will have the search results that can be parsed

    - Parameter LocalUserId: The Product User ID of the user making the search request
    - Parameter CompletionDelegate: A callback that is fired when the search operation completes, either successfully or in error
    - Returns: `EOS_Success` if the find operation completes successfully
               `EOS_NotFound` if searching for an individual lobby by lobby ID or target user ID returns no results
               `EOS_InvalidParameters` if any of the options are incorrect
    */
    public func Find(
        LocalUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_LobbySearch_FindCallbackInfo) -> Void
    ) throws {
        try ____Find(
            .init(LocalUserId: LocalUserId),
            CompletionDelegate
        )
    }

    /**
    Get the number of search results found by the search parameters in this search

    - Returns: return the number of search results found by the query or 0 if search is not complete
    */
    public func GetSearchResultCount() throws -> Int {
        try ____GetSearchResultCount()
    }

    /**
    Remove a parameter from the array of search criteria.

    - Parameter Key: Search parameter key to remove from the search
    - Parameter ComparisonOp: Search comparison operation associated with the key to remove
    - Throws: `EOS_InvalidParameters` if the search key is invalid or null
              `EOS_NotFound` if the parameter was not a part of the search criteria
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    public func RemoveParameter(
        Key: String?,
        ComparisonOp: EOS_EComparisonOp
    ) throws {
        try ____RemoveParameter(.init(
                Key: Key,
                ComparisonOp: ComparisonOp
            ))
    }

    /**
    Set a lobby ID to find and will return at most one search result.  Setting TargetUserId or SearchParameters will result in `EOS_LobbySearch_Find` failing

    - Parameter LobbyId: The ID of the lobby to find
    - Throws: `EOS_InvalidParameters` if the lobby ID is invalid or null
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    public func SetLobbyId(
        LobbyId: String?
    ) throws {
        try ____SetLobbyId(.init(LobbyId: LobbyId))
    }

    /**
    Set the maximum number of search results to return in the query, can't be more than `EOS_LOBBY_MAX_SEARCH_RESULTS`

    - Parameter MaxResults: Maximum number of search results to return from the query
    - Throws: `EOS_InvalidParameters` if the number of results requested is invalid
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    public func SetMaxResults(
        MaxResults: Int
    ) throws {
        try ____SetMaxResults(.init(MaxResults: MaxResults))
    }

    /**
    Add a parameter to an array of search criteria combined via an implicit AND operator.  Setting LobbyId or TargetUserId will result in `EOS_LobbySearch_Find` failing

    - Parameter Parameter: Search parameter describing a key and a value to compare
    - Parameter ComparisonOp: The type of comparison to make against the search parameter
    - Throws: `EOS_InvalidParameters` if the search criteria is invalid or null
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_Lobby_AttributeData`
    - SeeAlso: `EOS_EComparisonOp`
    */
    public func SetParameter(
        Parameter: SwiftEOS_Lobby_AttributeData?,
        ComparisonOp: EOS_EComparisonOp
    ) throws {
        try ____SetParameter(.init(
                Parameter: Parameter,
                ComparisonOp: ComparisonOp
            ))
    }

    /**
    Set a target user ID to find.  Setting LobbyId or SearchParameters will result in `EOS_LobbySearch_Find` failing

    - Note: a search result will only be found if this user is in a public lobby
    - Parameter TargetUserId: Search lobbies for given user by Product User ID, returning any lobbies where this user is currently registered
    - Throws: `EOS_InvalidParameters` if the target user ID is invalid or null
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    public func SetTargetUserId(
        TargetUserId: EOS_ProductUserId?
    ) throws {
        try ____SetTargetUserId(.init(TargetUserId: TargetUserId))
    }
}

extension SwiftEOS_LobbySearch_Actor {

    /**
    `EOS_LobbySearch_CopySearchResultByIndex` is used to immediately retrieve a handle to the lobby information from a given search result.
    If the call returns an `EOS_Success` result, the out parameter, OutLobbyDetailsHandle, must be passed to `EOS_LobbyDetails_Release` to release the memory associated with it.

    - Parameter Options: Structure containing the input parameters
    - Throws: `EOS_InvalidParameters` if you pass an invalid index or a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_LobbySearch_CopySearchResultByIndexOptions`
    - SeeAlso: `EOS_LobbyDetails_Release`
    - Returns: out parameter used to receive the lobby details handle
    */
    private func ____CopySearchResultByIndex(
        _ Options: SwiftEOS_LobbySearch_CopySearchResultByIndexOptions
    ) throws -> EOS_HLobbyDetails {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withHandleReturned(managedBy: pointerManager) { OutLobbyDetailsHandle in
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_LobbySearch_CopySearchResultByIndex(
                                Handle,
                                Options,
                                OutLobbyDetailsHandle
                            ) } } } } }
    }

    /**
    Find lobbies matching the search criteria setup via this lobby search handle.
    When the operation completes, this handle will have the search results that can be parsed

    - Parameter Options: Structure containing information about the search criteria to use
    - Parameter CompletionDelegate: A callback that is fired when the search operation completes, either successfully or in error
    - Returns: `EOS_Success` if the find operation completes successfully
               `EOS_NotFound` if searching for an individual lobby by lobby ID or target user ID returns no results
               `EOS_InvalidParameters` if any of the options are incorrect
    */
    private func ____Find(
        _ Options: SwiftEOS_LobbySearch_FindOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_LobbySearch_FindCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_LobbySearch_Find(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_LobbySearch_FindCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Get the number of search results found by the search parameters in this search

    - Returns: return the number of search results found by the query or 0 if search is not complete
    */
    private func ____GetSearchResultCount() throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalMutablePointerFromSwiftObject(SwiftEOS_LobbySearch_GetSearchResultCountOptions(), managedBy: pointerManager) { Options in
                        EOS_LobbySearch_GetSearchResultCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Remove a parameter from the array of search criteria.

    - Parameter Options: a search parameter key name to remove
    - Throws: `EOS_InvalidParameters` if the search key is invalid or null
              `EOS_NotFound` if the parameter was not a part of the search criteria
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    private func ____RemoveParameter(
        _ Options: SwiftEOS_LobbySearch_RemoveParameterOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbySearch_RemoveParameter(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Set a lobby ID to find and will return at most one search result.  Setting TargetUserId or SearchParameters will result in `EOS_LobbySearch_Find` failing

    - Parameter Options: A specific lobby ID for which to search
    - Throws: `EOS_InvalidParameters` if the lobby ID is invalid or null
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    private func ____SetLobbyId(
        _ Options: SwiftEOS_LobbySearch_SetLobbyIdOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbySearch_SetLobbyId(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Set the maximum number of search results to return in the query, can't be more than `EOS_LOBBY_MAX_SEARCH_RESULTS`

    - Parameter Options: maximum number of search results to return in the query
    - Throws: `EOS_InvalidParameters` if the number of results requested is invalid
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    private func ____SetMaxResults(
        _ Options: SwiftEOS_LobbySearch_SetMaxResultsOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbySearch_SetMaxResults(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Add a parameter to an array of search criteria combined via an implicit AND operator.  Setting LobbyId or TargetUserId will result in `EOS_LobbySearch_Find` failing

    - Parameter Options: a search parameter and its comparison op
    - Throws: `EOS_InvalidParameters` if the search criteria is invalid or null
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_Lobby_AttributeData`
    - SeeAlso: `EOS_EComparisonOp`
    */
    private func ____SetParameter(
        _ Options: SwiftEOS_LobbySearch_SetParameterOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbySearch_SetParameter(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Set a target user ID to find.  Setting LobbyId or SearchParameters will result in `EOS_LobbySearch_Find` failing

    - Note: a search result will only be found if this user is in a public lobby
    - Parameter Options: a specific target user ID to find
    - Throws: `EOS_InvalidParameters` if the target user ID is invalid or null
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    private func ____SetTargetUserId(
        _ Options: SwiftEOS_LobbySearch_SetTargetUserIdOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbySearch_SetTargetUserId(
                        Handle,
                        Options
                    ) } } }
    }
}
