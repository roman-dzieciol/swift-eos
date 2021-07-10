import Foundation
import EOSSDK

/** Input parameters for the EOS_SessionSearch_SetMaxResults function. */
public struct SwiftEOS_SessionSearch_SetMaxResultsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONSEARCH_SETMAXSEARCHRESULTS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Maximum number of search results returned with this query, may not exceed EOS_SESSIONS_MAX_SEARCH_RESULTS  */
    public let MaxSearchResults: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionSearch_SetMaxResultsOptions {
        try _tagEOS_SessionSearch_SetMaxResultsOptions(
            ApiVersion: ApiVersion,
            MaxSearchResults: try safeNumericCast(exactly: MaxSearchResults)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionSearch_SetMaxResultsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.MaxSearchResults = try safeNumericCast(exactly: sdkObject.MaxSearchResults)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_SESSIONSEARCH_SETMAXSEARCHRESULTS_API_LATEST. 
     * - Parameter MaxSearchResults:  Maximum number of search results returned with this query, may not exceed EOS_SESSIONS_MAX_SEARCH_RESULTS 
     */
    public init(
        ApiVersion: Int32 = EOS_SESSIONSEARCH_SETMAXSEARCHRESULTS_API_LATEST,
        MaxSearchResults: Int
    ) {
        self.ApiVersion = ApiVersion
        self.MaxSearchResults = MaxSearchResults
    }
}
