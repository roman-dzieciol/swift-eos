import Foundation
import EOSSDK
public class SwiftEOS_SessionSearch_Actor: SwiftEOSActor {
    public let Handle: EOS_HSessionSearch

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HSessionSearch
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_SessionSearch_Release(Handle)
    }

    /**
    EOS_SessionSearch_CopySearchResultByIndex is used to immediately retrieve a handle to the session information from a given search result.
    If the call returns an EOS_Success result, the out parameter, OutSessionHandle, must be passed to EOS_SessionDetails_Release to release the memory associated with it.

    - Parameter SessionIndex: The index of the session to retrieve within the completed search query
    - SeeAlso: EOS_SessionSearch_GetSearchResultCount
    - Throws: EOS_InvalidParameters if you pass an invalid index or a null pointer for the out parameter
              EOS_IncompatibleVersion if the API version passed in is incorrect
    - SeeAlso: EOS_SessionSearch_CopySearchResultByIndexOptions
    - SeeAlso: EOS_SessionDetails_Release
    - Returns: out parameter used to receive the session handle
    */
    public func CopySearchResultByIndex(
        SessionIndex: Int
    ) throws -> EOS_HSessionDetails? {
        try ____CopySearchResultByIndex(.init(SessionIndex: SessionIndex))
    }

    /**
    Find sessions matching the search criteria setup via this session search handle.
    When the operation completes, this handle will have the search results that can be parsed

    - Parameter LocalUserId: The Product User ID of the local user who is searching
    - Parameter CompletionDelegate: A callback that is fired when the search operation completes, either successfully or in error
    - Returns: EOS_Success if the find operation completes successfully
               EOS_NotFound if searching for an individual session by sessionid or targetuserid returns no results
               EOS_InvalidParameters if any of the options are incorrect
    */
    public func Find(
        LocalUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_SessionSearch_FindCallbackInfo) -> Void
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
    - Throws: EOS_InvalidParameters if the search key is invalid or null
              EOS_NotFound if the parameter was not a part of the search criteria
              EOS_IncompatibleVersion if the API version passed in is incorrect
    */
    public func RemoveParameter(
        Key: String?,
        ComparisonOp: EOS_EOnlineComparisonOp
    ) throws {
        try ____RemoveParameter(.init(
                Key: Key,
                ComparisonOp: ComparisonOp
            ))
    }

    /**
    Set the maximum number of search results to return in the query, can't be more than EOS_SESSIONS_MAX_SEARCH_RESULTS

    - Parameter MaxSearchResults: Maximum number of search results returned with this query, may not exceed EOS_SESSIONS_MAX_SEARCH_RESULTS
    - Throws: EOS_InvalidParameters if the number of results requested is invalid
              EOS_IncompatibleVersion if the API version passed in is incorrect
    */
    public func SetMaxResults(
        MaxSearchResults: Int
    ) throws {
        try ____SetMaxResults(.init(MaxSearchResults: MaxSearchResults))
    }

    /**
    Add a parameter to an array of search criteria combined via an implicit AND operator.  Setting SessionId or TargetUserId will result in EOS_SessionSearch_Find failing

    - Parameter Parameter: Search parameter describing a key and a value to compare
    - Parameter ComparisonOp: The type of comparison to make against the search parameter
    - Throws: EOS_InvalidParameters if the search criteria is invalid or null
              EOS_IncompatibleVersion if the API version passed in is incorrect
    - SeeAlso: EOS_Sessions_AttributeData
    - SeeAlso: EOS_EComparisonOp
    */
    public func SetParameter(
        Parameter: SwiftEOS_Sessions_AttributeData?,
        ComparisonOp: EOS_EOnlineComparisonOp
    ) throws {
        try ____SetParameter(.init(
                Parameter: Parameter,
                ComparisonOp: ComparisonOp
            ))
    }

    /**
    Set a session ID to find and will return at most one search result.  Setting TargetUserId or SearchParameters will result in EOS_SessionSearch_Find failing

    - Parameter SessionId: Search sessions for a specific session ID, returning at most one session
    - Throws: EOS_InvalidParameters if the session ID is invalid or null
              EOS_IncompatibleVersion if the API version passed in is incorrect
    */
    public func SetSessionId(
        SessionId: String?
    ) throws {
        try ____SetSessionId(.init(SessionId: SessionId))
    }

    /**
    Set a target user ID to find and will return at most one search result.  Setting SessionId or SearchParameters will result in EOS_SessionSearch_Find failing

    - Note: a search result will only be found if this user is in a public session
    - Parameter TargetUserId: The Product User ID to find; return any sessions where the user matching this ID is currently registered
    - Throws: EOS_InvalidParameters if the target user ID is invalid or null
              EOS_IncompatibleVersion if the API version passed in is incorrect
    */
    public func SetTargetUserId(
        TargetUserId: EOS_ProductUserId?
    ) throws {
        try ____SetTargetUserId(.init(TargetUserId: TargetUserId))
    }
}

extension SwiftEOS_SessionSearch_Actor {

    /**
    EOS_SessionSearch_CopySearchResultByIndex is used to immediately retrieve a handle to the session information from a given search result.
    If the call returns an EOS_Success result, the out parameter, OutSessionHandle, must be passed to EOS_SessionDetails_Release to release the memory associated with it.

    - Parameter Options: Structure containing the input parameters
    - Throws: EOS_InvalidParameters if you pass an invalid index or a null pointer for the out parameter
              EOS_IncompatibleVersion if the API version passed in is incorrect
    - SeeAlso: EOS_SessionSearch_CopySearchResultByIndexOptions
    - SeeAlso: EOS_SessionDetails_Release
    - Returns: out parameter used to receive the session handle
    */
    private func ____CopySearchResultByIndex(
        _ Options: SwiftEOS_SessionSearch_CopySearchResultByIndexOptions
    ) throws -> EOS_HSessionDetails? {
        try withPointerManager { pointerManager in
            try withPointeeReturned(managedBy: pointerManager) { OutSessionHandle in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_SessionSearch_CopySearchResultByIndex(
                            Handle,
                            Options,
                            OutSessionHandle
                        ) } } } }
    }

    /**
    Find sessions matching the search criteria setup via this session search handle.
    When the operation completes, this handle will have the search results that can be parsed

    - Parameter Options: Structure containing information about the search criteria to use
    - Parameter CompletionDelegate: A callback that is fired when the search operation completes, either successfully or in error
    - Returns: EOS_Success if the find operation completes successfully
               EOS_NotFound if searching for an individual session by sessionid or targetuserid returns no results
               EOS_InvalidParameters if any of the options are incorrect
    */
    private func ____Find(
        _ Options: SwiftEOS_SessionSearch_FindOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_SessionSearch_FindCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_SessionSearch_Find(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_SessionSearch_FindCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
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
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_SessionSearch_GetSearchResultCountOptions(), managedBy: pointerManager) { Options in
                        EOS_SessionSearch_GetSearchResultCount(
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
    - Throws: EOS_InvalidParameters if the search key is invalid or null
              EOS_NotFound if the parameter was not a part of the search criteria
              EOS_IncompatibleVersion if the API version passed in is incorrect
    */
    private func ____RemoveParameter(
        _ Options: SwiftEOS_SessionSearch_RemoveParameterOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_SessionSearch_RemoveParameter(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Set the maximum number of search results to return in the query, can't be more than EOS_SESSIONS_MAX_SEARCH_RESULTS

    - Parameter Options: maximum number of search results to return in the query
    - Throws: EOS_InvalidParameters if the number of results requested is invalid
              EOS_IncompatibleVersion if the API version passed in is incorrect
    */
    private func ____SetMaxResults(
        _ Options: SwiftEOS_SessionSearch_SetMaxResultsOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_SessionSearch_SetMaxResults(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Add a parameter to an array of search criteria combined via an implicit AND operator.  Setting SessionId or TargetUserId will result in EOS_SessionSearch_Find failing

    - Parameter Options: a search parameter and its comparison op
    - Throws: EOS_InvalidParameters if the search criteria is invalid or null
              EOS_IncompatibleVersion if the API version passed in is incorrect
    - SeeAlso: EOS_Sessions_AttributeData
    - SeeAlso: EOS_EComparisonOp
    */
    private func ____SetParameter(
        _ Options: SwiftEOS_SessionSearch_SetParameterOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_SessionSearch_SetParameter(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Set a session ID to find and will return at most one search result.  Setting TargetUserId or SearchParameters will result in EOS_SessionSearch_Find failing

    - Parameter Options: A specific session ID for which to search
    - Throws: EOS_InvalidParameters if the session ID is invalid or null
              EOS_IncompatibleVersion if the API version passed in is incorrect
    */
    private func ____SetSessionId(
        _ Options: SwiftEOS_SessionSearch_SetSessionIdOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_SessionSearch_SetSessionId(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Set a target user ID to find and will return at most one search result.  Setting SessionId or SearchParameters will result in EOS_SessionSearch_Find failing

    - Note: a search result will only be found if this user is in a public session
    - Parameter Options: a specific target user ID to find
    - Throws: EOS_InvalidParameters if the target user ID is invalid or null
              EOS_IncompatibleVersion if the API version passed in is incorrect
    */
    private func ____SetTargetUserId(
        _ Options: SwiftEOS_SessionSearch_SetTargetUserIdOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_SessionSearch_SetTargetUserId(
                        Handle,
                        Options
                    ) } } }
    }
}
